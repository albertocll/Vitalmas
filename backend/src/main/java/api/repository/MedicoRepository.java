package api.repository;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import api.model.Medico;

@Repository
public interface MedicoRepository extends JpaRepository<Medico, UUID> {
}