package api.service;

import api.model.Paciente;
import api.repository.PacienteRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class PacienteServiceTest {

    @Mock
    private PacienteRepository repo;

    @InjectMocks
    private PacienteService service;

    @Test
    void buscarPorId_existente_devuelvePaciente() {
        UUID id = UUID.randomUUID();
        Paciente paciente = new Paciente("John Doe", "12345678A");
        when(repo.findById(id)).thenReturn(Optional.of(paciente));

        Paciente resultado = service.buscarPorId(id);

        assertEquals("John Doe", resultado.getNombre());
    }

    @Test
    void buscarPorId_noExistente_lanzaException() {
        UUID id = UUID.randomUUID();
        when(repo.findById(id)).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.buscarPorId(id));
    }

    @Test
    void crear_dniDuplicado_lanzaConflict() {
        Paciente paciente = new Paciente("John Doe", "12345678A");
        when(repo.findByDni("12345678A")).thenReturn(Optional.of(paciente));

        assertThrows(ResponseStatusException.class, () -> service.crear(paciente));
    }

    @Test
    void crear_pacienteValido_guardaYDevuelve() {
        Paciente paciente = new Paciente("Jane Doe", "87654321B");
        when(repo.findByDni("87654321B")).thenReturn(Optional.empty());
        when(repo.save(paciente)).thenReturn(paciente);

        Paciente resultado = service.crear(paciente);

        assertEquals("Jane Doe", resultado.getNombre());
        verify(repo, times(1)).save(paciente);
    }

    @Test
    void eliminar_noExistente_lanzaException() {
        UUID id = UUID.randomUUID();
        when(repo.findById(id)).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.eliminar(id));
    }
}