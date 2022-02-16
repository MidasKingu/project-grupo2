package com.grupodos.proyecto.repositories;

import com.grupodos.proyecto.models.Region;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RegionRepository extends CrudRepository<Region,Long> {
    List<Region> findAll();
}
