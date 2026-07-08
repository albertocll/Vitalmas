package api.web;

import api.model.Cita;
import api.service.CitaService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.data.domain.Page;

import java.net.URI;
import java.util.UUID;

@RestController
@RequestMapping("/api/citas")
public class CitaController {

    private final CitaService service;

    public CitaController(CitaService service) {
        this.service = service;
    }

    @GetMapping
    public Page<Cita> listar(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return service.listarPaginado(page, size);
    }

    @GetMapping("/{id}")
    public Cita buscarPorId(@PathVariable UUID id) {
        return service.buscarPorId(id);
    }

    @PostMapping
    public ResponseEntity<Cita> crear(@RequestParam UUID medicoId,
            @RequestParam UUID pacienteId,
            @RequestBody Cita datos) {
        Cita creada = service.crear(medicoId, pacienteId, datos);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(creada.getId())
                .toUri();
        return ResponseEntity.created(uri).body(creada);
    }

    @PutMapping("/{id}")
    public Cita actualizar(@PathVariable UUID id, @RequestBody Cita datos) {
        return service.actualizar(id, datos);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> eliminar(@PathVariable UUID id) {
        service.eliminar(id);
        return ResponseEntity.noContent().build();
    }
}