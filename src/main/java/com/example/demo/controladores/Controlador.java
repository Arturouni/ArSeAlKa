package com.example.demo.controladores;

import org.springframework.web.bind.annotation.RestController;

import com.example.demo.daos.LugarDAO;
import com.example.demo.entidades.Lugar;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;



@RestController
@RequestMapping("/api")
public class Controlador { 

    @Autowired
    LugarDAO lugarDAO; 

    @GetMapping("/lugares")
    public Iterable<Lugar> obtenerLugares() {
       return lugarDAO.findAll();
    }

    @GetMapping("/lugares-filtrados")
    public List<Lugar> lugaresPorCaracteristica(@RequestParam String caracteristica) {
        System.out.println("caracteristica:" + caracteristica);
        return lugarDAO.buscarPorCaracteristicas(caracteristica);
    }
    
    
    
    
}
