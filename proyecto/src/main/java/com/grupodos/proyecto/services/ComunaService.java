package com.grupodos.proyecto.services;

import com.grupodos.proyecto.models.Comuna;
import com.grupodos.proyecto.models.Region;
import com.grupodos.proyecto.repositories.ComunaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ComunaService {
    private final ComunaRepository comunaRepository;
    private final RegionService regionService;
    public ComunaService(ComunaRepository comunaRepository,RegionService regionService){
        this.comunaRepository = comunaRepository;
        this.regionService = regionService;
    }
    public Comuna findById(Long id){
        return comunaRepository.findById(id).orElseThrow();
    }
    public List<Comuna> findAll(){
        return (List<Comuna>) comunaRepository.findAll();
    }
    public List<Comuna> findByRegion(Long regionId){
        Region region = regionService.findRegionById(regionId);
        return comunaRepository.findByRegion(region);
    }

}
