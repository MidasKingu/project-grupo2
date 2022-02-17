package com.grupodos.proyecto.repositories;

import com.grupodos.proyecto.models.Comentario;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComentarioRepository extends CrudRepository <Comentario,Long> {
}
