package api.service;

import api.model.Enfermedad;
import api.repository.EnfermedadRepository;
import api.repository.SintomaRepository;
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
class EnfermedadServiceTest {

    @Mock
    private EnfermedadRepository enfermedadRepository;

    @Mock
    private SintomaRepository sintomaRepository;

    @InjectMocks
    private EnfermedadService service;

    @Test
    void buscarPorId_existente_devuelveEnfermedad() {
        UUID id = UUID.randomUUID();
        Enfermedad enfermedad = new Enfermedad();
        enfermedad.setNombre("Diabetes tipo 2");
        when(enfermedadRepository.findById(id)).thenReturn(Optional.of(enfermedad));

        Optional<Enfermedad> resultado = service.buscarPorId(id);

        assertTrue(resultado.isPresent());
        assertEquals("Diabetes tipo 2", resultado.get().getNombre());
    }

    @Test
    void buscarPorId_noExistente_devuelveVacio() {
        UUID id = UUID.randomUUID();
        when(enfermedadRepository.findById(id)).thenReturn(Optional.empty());

        Optional<Enfermedad> resultado = service.buscarPorId(id);

        assertTrue(resultado.isEmpty());
    }

    @Test
    void crear_enfermedadDuplicada_lanzaConflict() {
        Enfermedad enfermedad = new Enfermedad();
        enfermedad.setNombre("Diabetes tipo 2");
        when(enfermedadRepository.existsByNombreIgnoreCase("Diabetes tipo 2")).thenReturn(true);

        assertThrows(ResponseStatusException.class, () -> service.crear(enfermedad));
    }

    @Test
    void crear_enfermedadNueva_guardaYDevuelve() {
        Enfermedad enfermedad = new Enfermedad();
        enfermedad.setNombre("Nueva Enfermedad");
        when(enfermedadRepository.existsByNombreIgnoreCase("Nueva Enfermedad")).thenReturn(false);
        when(enfermedadRepository.save(enfermedad)).thenReturn(enfermedad);

        Enfermedad resultado = service.crear(enfermedad);

        assertEquals("Nueva Enfermedad", resultado.getNombre());
        verify(enfermedadRepository, times(1)).save(enfermedad);
    }
}