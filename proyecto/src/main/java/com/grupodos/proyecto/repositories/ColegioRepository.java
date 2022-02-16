package com.grupodos.proyecto.repositories;

import com.grupodos.proyecto.models.Colegio;
import com.grupodos.proyecto.models.Comuna;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ColegioRepository extends CrudRepository<Colegio,Long> {
    List<Colegio>findByComuna(Comuna c);

}
