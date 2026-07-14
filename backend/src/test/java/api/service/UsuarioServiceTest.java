package api.service;

import api.model.Usuario;
import api.model.Usuario.Rol;
import api.repository.UsuarioRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class UsuarioServiceTest {

    @Mock
    private UsuarioRepository repo;

    @Mock
    private PasswordEncoder encoder;

    @InjectMocks
    private UsuarioService service;

    @Test
    void buscarPorUsuario_existente_devuelveUsuario() {
        Usuario usuario = new Usuario("house", "Dr. House", "hash", Rol.MEDICO);
        when(repo.findByUsuario("house")).thenReturn(Optional.of(usuario));

        Usuario resultado = service.buscarPorUsuario("house");

        assertEquals("house", resultado.getUsuario());
    }

    @Test
    void buscarPorUsuario_noExistente_lanzaException() {
        when(repo.findByUsuario("noexiste")).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.buscarPorUsuario("noexiste"));
    }

    @Test
    void crear_usuarioDuplicado_lanzaConflict() {
        Usuario usuario = new Usuario("house", "Dr. House", "hash", Rol.MEDICO);
        when(repo.findByUsuario("house")).thenReturn(Optional.of(usuario));

        assertThrows(ResponseStatusException.class, () -> service.crear(usuario));
    }

    @Test
    void cambiarPassword_incorrecta_lanzaUnauthorized() {
        Usuario usuario = new Usuario("house", "Dr. House", "hashActual", Rol.MEDICO);
        when(repo.findByUsuario("house")).thenReturn(Optional.of(usuario));
        when(encoder.matches("wrongpass", "hashActual")).thenReturn(false);

        assertThrows(ResponseStatusException.class,
                () -> service.cambiarPassword("house", "wrongpass", "nuevaPass"));
    }

    @Test
    void cambiarPassword_correcta_actualizaPassword() {
        Usuario usuario = new Usuario("house", "Dr. House", "hashActual", Rol.MEDICO);
        when(repo.findByUsuario("house")).thenReturn(Optional.of(usuario));
        when(encoder.matches("House@2026!", "hashActual")).thenReturn(true);
        when(encoder.encode("NuevaClave@1")).thenReturn("nuevoHash");
        when(repo.save(usuario)).thenReturn(usuario);

        service.cambiarPassword("house", "House@2026!", "NuevaClave@1");

        verify(repo, times(1)).save(usuario);
    }
}