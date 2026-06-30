package api.repository;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import api.model.Medico;


public interface MedicoRepository extends JpaRepository<Medico, UUID> {
}