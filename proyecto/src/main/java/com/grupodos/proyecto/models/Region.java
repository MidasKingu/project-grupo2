package com.grupodos.proyecto.models;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Entity
@Table(name = "regiones")
@Data
public class Region {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Column(unique = true,nullable = false)
    private String nombre;
    @OneToMany(mappedBy="region", fetch = FetchType.EAGER)
    private List<Comuna> comunas;

}