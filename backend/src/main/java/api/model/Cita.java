package api.model;

import java.time.LocalDateTime;
import java.util.Objects;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "cita")
public class Cita {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "medico_id", nullable = false)
    private Medico medico;

    @ManyToOne(optional = false)
    @JoinColumn(name = "paciente_id", nullable = false)
    private Paciente paciente;

    @Column(nullable = false, length = 255)
    private String motivo;

    @Column(nullable = false)
    private LocalDateTime fechaHora;

    @Column(nullable = false)
    private boolean realizada = false;

    protected Cita() {}

    public Cita(Medico medico, Paciente paciente, String motivo, LocalDateTime fechaHora) {
        this.medico = medico;
        this.paciente = paciente;
        this.motivo = motivo;
        this.fechaHora = fechaHora;
    }

    public UUID getId() { return id; }
    public Medico getMedico() { return medico; }
    public void setMedico(Medico medico) { this.medico = medico; }
    public Paciente getPaciente() { return paciente; }
    public void setPaciente(Paciente paciente) { this.paciente = paciente; }
    public String getMotivo() { return motivo; }
    public void setMotivo(String motivo) { this.motivo = motivo; }
    public LocalDateTime getFechaHora() { return fechaHora; }
    public void setFechaHora(LocalDateTime fechaHora) { this.fechaHora = fechaHora; }
    public boolean isRealizada() { return realizada; }
    public void setRealizada(boolean realizada) { this.realizada = realizada; }

    @Override
    public String toString() {
        return "Cita{id='%s', medico='%s', paciente='%s', fecha='%s', realizada=%s}"
                .formatted(id, medico.getNombre(), paciente.getNombre(), fechaHora, realizada);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Cita c)) return false;
        return Objects.equals(id, c.id);
    }

    @Override
    public int hashCode() { return Objects.hash(id); }
}