package api.config;

import api.model.Usuario;
import api.model.Usuario.Rol;
import api.repository.UsuarioRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SeedDevUser {

    @Bean
    CommandLineRunner initUser(UsuarioRepository repo, PasswordEncoder encoder) {
        return args -> {
            if (repo.findByUsuario("house").isEmpty()) {
                Usuario u = new Usuario(
                    "Dr. Gregory House",
                    "house",
                    encoder.encode("***REMOVED***"),
                    Rol.ADMIN
                );
                u.setEnabled(true);
                repo.save(u);
                System.out.println("✅ Usuario 'house' creado con password '***REMOVED***' (rol ADMIN)");
            }
        };
    }
}
