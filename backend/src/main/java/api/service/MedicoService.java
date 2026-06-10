package api.service;

import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import api.model.Medico;
import api.repository.MedicoRepository;

@Service
public class MedicoService {

    private final MedicoRepository repo;

    public MedicoService(MedicoRepository repo) {
        this.repo = repo;
    }

    public List<Medico> listar() {
        return repo.findAll();
    }

    public Medico buscarPorId(UUID id) {
        return repo.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Médico no encontrado"));
    }

    public Medico crear(Medico medico) {
        return repo.save(medico);
    }

    public Medico actualizar(UUID id, Medico datos) {
        Medico medico = buscarPorId(id);
        medico.setNombre(datos.getNombre());
        medico.setEspecialidad(datos.getEspecialidad());
        return repo.save(medico);
    }

    public void eliminar(UUID id) {
        buscarPorId(id);
        repo.deleteById(id);
    }
}