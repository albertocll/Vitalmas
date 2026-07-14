package api.service;

import api.model.Cita;
import api.model.Medico;
import api.model.Paciente;
import api.repository.CitaRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class CitaServiceTest {

    @Mock
    private CitaRepository repo;

    @Mock
    private MedicoService medicoService;

    @Mock
    private PacienteService pacienteService;

    @InjectMocks
    private CitaService service;

    @Test
    void buscarPorId_existente_devuelveCita() {
        UUID id = UUID.randomUUID();
        Cita cita = new Cita(new Medico("Dr. House", "Diagnostico"),
                new Paciente("John Doe", "12345678A"),
                "Revision general",
                LocalDateTime.now());
        when(repo.findById(id)).thenReturn(Optional.of(cita));

        Cita resultado = service.buscarPorId(id);

        assertEquals("Revision general", resultado.getMotivo());
    }

    @Test
    void buscarPorId_noExistente_lanzaException() {
        UUID id = UUID.randomUUID();
        when(repo.findById(id)).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.buscarPorId(id));
    }

    @Test
    void crear_citaValida_guardaYDevuelve() {
        UUID medicoId = UUID.randomUUID();
        UUID pacienteId = UUID.randomUUID();
        Medico medico = new Medico("Dr. House", "Diagnostico");
        Paciente paciente = new Paciente("John Doe", "12345678A");
        Cita datos = new Cita(medico, paciente, "Consulta", LocalDateTime.now());

        when(medicoService.buscarPorId(medicoId)).thenReturn(medico);
        when(pacienteService.buscarPorId(pacienteId)).thenReturn(paciente);
        when(repo.save(any(Cita.class))).thenReturn(datos);

        Cita resultado = service.crear(medicoId, pacienteId, datos);

        assertEquals("Consulta", resultado.getMotivo());
        verify(repo, times(1)).save(any(Cita.class));
    }

    @Test
    void eliminar_noExistente_lanzaException() {
        UUID id = UUID.randomUUID();
        when(repo.findById(id)).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.eliminar(id));
    }
}