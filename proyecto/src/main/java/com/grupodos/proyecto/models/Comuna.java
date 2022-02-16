package com.grupodos.proyecto.models;

import lombok.Data;


import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Entity
@Table(name = "comunas")
@Data
public class Comuna {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Column(unique = true,nullable = false)
    private String nombre;

    @OneToMany(mappedBy="comuna", fetch = FetchType.EAGER)
    private List<Colegio> colegios;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "region_id")
    private Region region;

}
