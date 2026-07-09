package api.web;

import api.repository.CitaRepository;
import api.repository.EnfermedadRepository;
import api.repository.MedicoRepository;
import api.repository.PacienteRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/stats")
public class StatsController {

    private final MedicoRepository medicoRepository;
    private final PacienteRepository pacienteRepository;
    private final CitaRepository citaRepository;
    private final EnfermedadRepository enfermedadRepository;

    public StatsController(MedicoRepository medicoRepository,
                           PacienteRepository pacienteRepository,
                           CitaRepository citaRepository,
                           EnfermedadRepository enfermedadRepository) {
        this.medicoRepository = medicoRepository;
        this.pacienteRepository = pacienteRepository;
        this.citaRepository = citaRepository;
        this.enfermedadRepository = enfermedadRepository;
    }

    @GetMapping
    public ResponseEntity<Map<String, Object>> stats() {
        Map<String, Object> stats = new LinkedHashMap<>();
        stats.put("medicos", medicoRepository.count());
        stats.put("pacientes", pacienteRepository.count());
        stats.put("citas_totales", citaRepository.count());
        stats.put("citas_realizadas", citaRepository.countByRealizadaTrue());
        stats.put("citas_pendientes", citaRepository.countByRealizadaFalse());
        stats.put("enfermedades", enfermedadRepository.count());
        return ResponseEntity.ok(stats);
    }
}