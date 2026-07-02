package api.repository;

import java.util.Optional;
import java.util.UUID;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import api.model.Enfermedad;

public interface EnfermedadRepository extends JpaRepository<Enfermedad, UUID> {
    Optional<Enfermedad> findByNombreIgnoreCase(String nombre);
    boolean existsByNombreIgnoreCase(String nombre);
    @EntityGraph(attributePaths = "sintomas")
    Optional<Enfermedad> findWithSintomasByNombreIgnoreCase(String nombre);
}