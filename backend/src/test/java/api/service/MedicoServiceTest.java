package api.service;

import api.model.Medico;
import api.repository.MedicoRepository;
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
class MedicoServiceTest {

    @Mock
    private MedicoRepository repo;

    @InjectMocks
    private MedicoService service;

    @Test
    void buscarPorId_existente_devuelveMedico() {
        UUID id = UUID.randomUUID();
        Medico medico = new Medico("Dr. House", "Diagnostico");
        when(repo.findById(id)).thenReturn(Optional.of(medico));

        Medico resultado = service.buscarPorId(id);

        assertEquals("Dr. House", resultado.getNombre());
    }

    @Test
    void buscarPorId_noExistente_lanzaException() {
        UUID id = UUID.randomUUID();
        when(repo.findById(id)).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.buscarPorId(id));
    }

    @Test
    void crear_medicoValido_guardaYDevuelve() {
        Medico medico = new Medico("Dr. Wilson", "Oncologia");
        when(repo.save(medico)).thenReturn(medico);

        Medico resultado = service.crear(medico);

        assertEquals("Dr. Wilson", resultado.getNombre());
        verify(repo, times(1)).save(medico);
    }

    @Test
    void eliminar_noExistente_lanzaException() {
        UUID id = UUID.randomUUID();
        when(repo.findById(id)).thenReturn(Optional.empty());

        assertThrows(ResponseStatusException.class, () -> service.eliminar(id));
    }
}