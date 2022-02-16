package com.grupodos.proyecto.models;



import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Entity
@Table(name = "colegios")
@Data
public class Colegio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Column(unique = true,nullable = false)
    private String nombre;
    @NotBlank
    @Column(nullable = false)
    private String direccion;
    //Contactos
    @Email
    private String email;

    private String telefono;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="comuna_id")
    private Comuna comuna;
    private String privacidad;
    private String sostenedor;
    private String enseñanzas;
    private String pago;
    private String oportunidades_educativas;
    private String infraestructura_educativa;
    private String deportes;
    private String actividades_extra;
    private String religion;
    private String enfasis_edu;
    private String programa_formacion;
    private String apoyo_aprendizaje;
    private String nee;
    private String programa_apoderados;

    @OneToMany(mappedBy = "colegio",fetch = FetchType.EAGER)
    private List<Imagen>imagenes;








}
