package api.config;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

import api.model.Usuario;
import api.model.Usuario.Rol;
import api.repository.UsuarioRepository;

@Configuration
public class SeedDevUser {

    @SuppressWarnings("unused")
    @Bean
    CommandLineRunner initUser(UsuarioRepository repo, PasswordEncoder encoder) {
        return args -> {
            if (repo.findByUsuario("house").isEmpty()) {
                Usuario u = new Usuario(
                        "house", // usuario
                        "Dr. Gregory House", // nombre
                        encoder.encode("house123"), // password (BCrypt)
                        Rol.MEDICO // rol
                );
                u.setEnabled(true);
                repo.save(u);
                System.out.println("✅ Usuario 'house' creado con password 'house123' (rol MEDICO)");
            }
        };
    }
}
