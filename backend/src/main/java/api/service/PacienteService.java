package api.service;

import java.util.List;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import api.model.Paciente;
import api.repository.PacienteRepository;

@Service
public class PacienteService {

    private final PacienteRepository repo;

    public PacienteService(PacienteRepository repo) {
        this.repo = repo;
    }

    public List<Paciente> listar() {
        return repo.findAll();
    }

    public Page<Paciente> listarPaginado(int page, int size) {
        return repo.findAll(PageRequest.of(page, size));
    }

    public Paciente buscarPorId(UUID id) {
        return repo.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Paciente no encontrado"));
    }

    public Paciente buscarPorDni(String dni) {
        return repo.findByDni(dni)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Paciente no encontrado"));
    }

    public Paciente crear(Paciente paciente) {
        if (paciente.getDni() != null && repo.findByDni(paciente.getDni()).isPresent()) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Ya existe un paciente con ese DNI");
        }
        return repo.save(paciente);
    }

    public Paciente actualizar(UUID id, Paciente datos) {
        Paciente paciente = buscarPorId(id);
        paciente.setNombre(datos.getNombre());
        paciente.setDni(datos.getDni());
        return repo.save(paciente);
    }

    public void eliminar(UUID id) {
        buscarPorId(id);
        repo.deleteById(id);
    }
}