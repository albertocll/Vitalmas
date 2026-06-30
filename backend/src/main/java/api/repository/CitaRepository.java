package api.repository;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;


import api.model.Cita;
import api.model.Medico;
import api.model.Paciente;


public interface CitaRepository extends JpaRepository<Cita, UUID> {
    List<Cita> findByMedicoOrderByFechaHoraDesc(Medico medico);
    List<Cita> findByPacienteOrderByFechaHoraDesc(Paciente paciente);
}