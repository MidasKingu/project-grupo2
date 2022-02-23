package com.grupodos.proyecto.services;

import com.grupodos.proyecto.models.Colegio;
import com.grupodos.proyecto.models.Comuna;
import com.grupodos.proyecto.repositories.ColegioRepository;
import com.grupodos.proyecto.repositories.ComunaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ColegioService {
    private final ColegioRepository colegioRepository;
    private final ComunaRepository comunaRepository;
    public ColegioService(ColegioRepository colegioRepository,ComunaRepository comunaRepository){
        this.colegioRepository = colegioRepository;
        this.comunaRepository = comunaRepository;
    }
    public List<Colegio>buscarPorIdComuna(Long id){
        return colegioRepository.findByComuna(comunaRepository.findById(id).get());
    }
    public Colegio buscarColegio(Long id){
        return colegioRepository.findById(id).orElseThrow();
    }
    public Colegio crearColegio(Colegio c){
        return colegioRepository.save(c);
    }
}
