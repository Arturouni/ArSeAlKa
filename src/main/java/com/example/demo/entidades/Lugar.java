package com.example.demo.entidades;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Getter;
import lombok.Setter;

@Table("lugares")
@Getter
@Setter
public class Lugar {
    //@Column("id_tabla")
    @Id
    Integer id;
    String estado;
    String nombre;
    String sitio;
    int tramo;
    String descripcion;
    String caracteristicas;
}
