package com.grupodos.proyecto.services;

import com.grupodos.proyecto.models.Region;
import com.grupodos.proyecto.repositories.RegionRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegionService {
    private final RegionRepository regionRepository;
    public RegionService (RegionRepository regionRepository){
        this.regionRepository = regionRepository;
    }
    public List<Region>listaRegiones(){
        return regionRepository.findAll();
    }
    public Region findRegionById(Long regionId){
        return regionRepository.findById(regionId).orElseThrow();
    }
}
