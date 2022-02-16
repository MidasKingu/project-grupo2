package com.grupodos.proyecto.controller;

import com.grupodos.proyecto.models.Colegio;
import com.grupodos.proyecto.models.Comuna;
import com.grupodos.proyecto.models.Region;
import com.grupodos.proyecto.services.ColegioService;
import com.grupodos.proyecto.services.ComunaService;
import com.grupodos.proyecto.services.RegionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AppController {
    private final RegionService regionService;
    private final ComunaService comunaService;
    private final ColegioService colegioService;
    public AppController(RegionService regionService,ComunaService comunaService,ColegioService colegioService){
        this.comunaService = comunaService;
        this.regionService = regionService;
        this.colegioService = colegioService;
    }

    @GetMapping("/")
    public String main(){
        return "main.jsp";
    }

    @GetMapping("/busqueda")
    public String search(Model model,@RequestParam(required = false)Long regionId){
        List<Region> listaRegiones = regionService.listaRegiones();
        if(regionId!=null && regionId>0){
            List<Comuna> listaComuna = comunaService.findByRegion(regionId);
            model.addAttribute("comunas",listaComuna);
        }

        model.addAttribute("regiones",listaRegiones);
        return "search.jsp";
    }
    @GetMapping("/escuelas")
    public String escuelas(Model model, @RequestParam Long comunaId){
        List<Colegio>colegios = colegioService.buscarPorIdComuna(comunaId);
        Comuna comuna = comunaService.findById(comunaId);
        model.addAttribute("comuna",comuna);
        model.addAttribute("colegios",colegios);
        return "escuelas.jsp";
    }
    @GetMapping("/moreInfo/{id}")
    public String escuela(Model model, @PathVariable(name = "id")Long id){
        Colegio c = colegioService.buscarColegio(id);
        model.addAttribute("colegio",c);
        return "informacion.jsp";
    }
    @GetMapping("/sobreNosotros")
    public String sobreNosotros(){
        return "sobreNosotros.jsp"
    }
    @GetMapping("/comentarios")
    public String comentarios(@ModelAttribute Comentario comentario){
        return "comentarios.jsp"
    }
    @PostMapping("/comentarios)
    public String enviarComentario(@Valid @ModelAttribute (name="comentario") Comentario comentario, BindingResult result){
        return "redirect:/comentarios"
    }


}
