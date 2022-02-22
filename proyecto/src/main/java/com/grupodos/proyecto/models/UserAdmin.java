package com.grupodos.proyecto.models;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "admin")
@Data
public class UserAdmin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Email
    @Column(unique = true)
    private String email;
    @Length(min = 8,max = 100,message = "La contraseña debe contener entre 8 y 100 caracteres.")
    @NotBlank
    private String contraseña;
    @Transient
    private String confirmacionContraseña;
    private Integer codigo = 2450003;
    @Transient
    private Integer confirmacionCodigo;
}
