package api.web;

import java.net.URI;
import java.util.List;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import api.model.Cita;
import api.model.Medico;
import api.service.CitaService;
import api.service.MedicoService;
import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/medicos")
public class MedicoController {

    private final MedicoService service;
    private final CitaService citaService;

    public MedicoController(MedicoService service, CitaService citaService) {
        this.service = service;
        this.citaService = citaService;
    }

    @GetMapping
    public Page<Medico> listar(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return service.listarPaginado(page, size);
    }

    @GetMapping("/{id}")
    public Medico buscarPorId(@PathVariable UUID id) {
        return service.buscarPorId(id);
    }

    @GetMapping("/{id}/citas")
    public List<Cita> listarCitas(@PathVariable UUID id) {
        return citaService.listarPorMedico(id);
    }

    @PostMapping
    public ResponseEntity<Medico> crear(@Valid @RequestBody Medico medico) {
        Medico creado = service.crear(medico);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(creado.getId())
                .toUri();
        return ResponseEntity.created(uri).body(creado);
    }

    @PutMapping("/{id}")
    public Medico actualizar(@PathVariable UUID id, @Valid @RequestBody Medico medico) {
        return service.actualizar(id, medico);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> eliminar(@PathVariable UUID id) {
        service.eliminar(id);
        return ResponseEntity.noContent().build();
    }
}