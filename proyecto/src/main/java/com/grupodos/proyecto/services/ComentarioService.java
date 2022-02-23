package com.grupodos.proyecto.services;

import com.grupodos.proyecto.models.Comentario;
import com.grupodos.proyecto.repositories.ComentarioRepository;
import lombok.Data;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Data
public class ComentarioService {
    private final ComentarioRepository comentarioRepository;

    public ComentarioService(ComentarioRepository comentarioRepository) {
        this.comentarioRepository = comentarioRepository;
    }
    public Comentario crearComentario(Comentario comentario){
       return comentarioRepository.save(comentario);
    }
    public List<Comentario> listaComentarios(){
        return (List<Comentario>) comentarioRepository.findAll();
    }
    public void eliminarPorId(Long id){
        comentarioRepository.deleteById(id);
    }
}
