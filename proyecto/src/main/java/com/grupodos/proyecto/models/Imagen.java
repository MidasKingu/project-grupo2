package com.grupodos.proyecto.models;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Entity
@Table(name = "imagenes")
@Data
public class Imagen {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true,length = 2000)
    private String url;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "colegio_id")
    private Colegio colegio;
}
