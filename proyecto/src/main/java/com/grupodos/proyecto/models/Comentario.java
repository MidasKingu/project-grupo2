package com.grupodos.proyecto.models;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name="comentarios")
@Data
public class Comentario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @NotNull
    private String nombre;

    @NotBlank
    @NotNull
    @Email
    private String email;
    @NotBlank
    private String tipoComentario;
    @NotBlank
    @NotNull
    @Size(min=1, max=250)
    private String contenido;

    private Date createdAt;

    @PrePersist
    public void onCreate(){
        this.createdAt = new Date();
    }
}
