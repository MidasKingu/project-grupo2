package com.grupodos.proyecto.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "colegios")
@Getter @Setter @NoArgsConstructor
public class Colegios {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Column(unique = true)
    private String nombre;
    private String direccion;
    //Contactos
    private String email;
    private String numero;
    


}
