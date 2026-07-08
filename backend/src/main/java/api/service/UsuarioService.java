package api.service;

import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import api.dto.RegistroUsuarioDTO;
import api.model.Usuario;
import api.repository.UsuarioRepository;

@Service
public class UsuarioService implements UserDetailsService {

    private final UsuarioRepository repo;
    private final PasswordEncoder encoder;

    public UsuarioService(UsuarioRepository repo, PasswordEncoder encoder) {
        this.repo = repo;
        this.encoder = encoder;
    }

    public Usuario crear(Usuario usuario) {
        if (repo.findByUsuario(usuario.getUsuario()).isPresent()) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "El usuario ya existe");
        }
        return repo.save(usuario);
    }

    public Usuario buscarPorId(UUID id) {
        return repo.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Usuario no encontrado"));
    }

    public Usuario buscarPorUsuario(String usuario) {
        return repo.findByUsuario(usuario)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Usuario no encontrado"));
    }

    public Usuario registrar(RegistroUsuarioDTO dto) {
        if (repo.findByUsuario(dto.getUsuario()).isPresent()) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "El usuario ya existe");
        }
        Usuario u = new Usuario(
            dto.getUsuario(),
            dto.getNombre(),
            encoder.encode(dto.getPassword()),
            Usuario.Rol.valueOf(dto.getRol().toUpperCase())
        );
        u.setEnabled(true);
        return repo.save(u);
    }

    public void cambiarPassword(String usuarioActual, String passwordActual, String passwordNueva) {
        Usuario usuario = buscarPorUsuario(usuarioActual);
        if (!encoder.matches(passwordActual, usuario.getPassword())) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Contraseña actual incorrecta");
        }
        usuario.setPassword(encoder.encode(passwordNueva));
        repo.save(usuario);
    }

    @Override
    public UserDetails loadUserByUsername(String username) {
        Usuario usuario = buscarPorUsuario(username);
        String roleName = "ROLE_" + usuario.getRol().name();
        var authorities = List.of(new SimpleGrantedAuthority(roleName));
        return new User(usuario.getUsuario(), usuario.getPassword(), authorities);
    }
}