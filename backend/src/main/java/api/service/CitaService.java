package api.service;

import java.util.List;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import api.model.Cita;
import api.model.Medico;
import api.model.Paciente;
import api.repository.CitaRepository;

@Service
public class CitaService {

    private final CitaRepository repo;
    private final MedicoService medicoService;
    private final PacienteService pacienteService;

    public CitaService(CitaRepository repo, MedicoService medicoService, PacienteService pacienteService) {
        this.repo = repo;
        this.medicoService = medicoService;
        this.pacienteService = pacienteService;
    }

    public List<Cita> listar() {
        return repo.findAll();
    }

    public Page<Cita> listarPaginado(int page, int size) {
        return repo.findAll(PageRequest.of(page, size));
    }

    public Cita buscarPorId(UUID id) {
        return repo.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Cita no encontrada"));
    }

    public List<Cita> listarPorMedico(UUID medicoId) {
        Medico medico = medicoService.buscarPorId(medicoId);
        return repo.findByMedicoOrderByFechaHoraDesc(medico);
    }

    public List<Cita> listarPorPaciente(UUID pacienteId) {
        Paciente paciente = pacienteService.buscarPorId(pacienteId);
        return repo.findByPacienteOrderByFechaHoraDesc(paciente);
    }

    public Cita crear(UUID medicoId, UUID pacienteId, Cita datos) {
        Medico medico = medicoService.buscarPorId(medicoId);
        Paciente paciente = pacienteService.buscarPorId(pacienteId);
        Cita cita = new Cita(medico, paciente, datos.getMotivo(), datos.getFechaHora());
        return repo.save(cita);
    }

    public Cita actualizar(UUID id, Cita datos) {
        Cita cita = buscarPorId(id);
        cita.setMotivo(datos.getMotivo());
        cita.setFechaHora(datos.getFechaHora());
        cita.setRealizada(datos.isRealizada());
        return repo.save(cita);
    }

    public void eliminar(UUID id) {
        buscarPorId(id);
        repo.deleteById(id);
    }
}