package com.example.demo.daos;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.entidades.Lugar;

public interface LugarDAO extends CrudRepository<Lugar,Integer>{
    
    @Query("SELECT * FROM lugares WHERE caracteristicas=:caracteristica")
    List<Lugar> buscarPorCaracteristicas(String caracteristica);
}
