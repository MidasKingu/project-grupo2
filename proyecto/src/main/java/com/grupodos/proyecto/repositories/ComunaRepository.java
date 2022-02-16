package com.grupodos.proyecto.repositories;

import com.grupodos.proyecto.models.Comuna;
import com.grupodos.proyecto.models.Region;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ComunaRepository extends CrudRepository<Comuna,Long> {
    public List<Comuna> findByRegion(Region region);
}
