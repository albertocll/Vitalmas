package api.repository;

import java.util.Optional;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;


import api.model.Paciente;

public interface PacienteRepository extends JpaRepository<Paciente, UUID> {
    Optional<Paciente> findByDni(String dni);
}