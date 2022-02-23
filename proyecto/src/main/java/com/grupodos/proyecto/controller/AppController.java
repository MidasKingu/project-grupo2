package com.grupodos.proyecto.controller;

import com.grupodos.proyecto.models.*;
import com.grupodos.proyecto.services.*;
import com.grupodos.proyecto.validator.AdminValidator;
import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class AppController {
    private final RegionService regionService;
    private final ComunaService comunaService;
    private final ColegioService colegioService;
    private final ComentarioService comentarioService;
    private final AdminValidator adminValidator;
    private final AdminService adminService;
    public AppController(RegionService regionService, ComunaService comunaService, ColegioService colegioService, ComentarioService comentarioService, AdminValidator adminValidator, AdminService adminService){
        this.comunaService = comunaService;
        this.regionService = regionService;
        this.colegioService = colegioService;
        this.comentarioService = comentarioService;
        this.adminValidator = adminValidator;
        this.adminService = adminService;
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
        model.addAttribute("c",c);
        return "infoColegio.jsp";
    }
    @GetMapping("/sobreNosotros")
    public String sobreNosotros(){
        return "sobreNosotros.jsp";
    }
    @GetMapping("/comentarios")
    public String comentarios(@ModelAttribute Comentario comentario){
        return "comentario.jsp";
    }
    @PostMapping("/comentarios")
    public String enviarComentario(@Valid @ModelAttribute (name="comentario") Comentario comentario, BindingResult result){
        if(result.hasErrors()){
            return "comentario.jsp";
        }
        comentarioService.crearComentario(comentario);
        return "redirect:/comentarios";
    }
    @GetMapping("/informacion")
    public String info(){
        return "informacion.jsp";
    }

    @GetMapping("/donaciones")
    public String donaciones(){
        return "donaciones.jsp";
    }
    @GetMapping("/adminReg")
    public String regPage(@ModelAttribute("user")UserAdmin user){
        return "registration.jsp";
    }
    @PostMapping("/adminReg")
    public String registerUser(@Valid @ModelAttribute("user")UserAdmin user,BindingResult result){
        if(result.hasErrors()){
            return "registration.jsp";
        }
        adminService.registerUser(user);
        return "redirect:/login";
    }
    @GetMapping("/login")
    public String paginLogin(){
        return "login.jsp";
    }
    @PostMapping("/login")
    public String login(@RequestParam("email")String email, @RequestParam("password")String password, HttpSession sesion,Model model) {
        if (adminService.authenticateUser(email, password)) {
            UserAdmin u = adminService.findByEmail(email);
            sesion.setAttribute("userId", u.getId());
            return "redirect:/";
        } else {
            model.addAttribute("error", "Autenticacion incorrecta,Intente nuevamente");
            return "login.jsp";
        }
    }
    @GetMapping("/videos")
    public String videos(){
        return "videos.jsp";
    }
    @GetMapping("/panelAdmin")
    public String panel(){
        return "panel.jsp";
    }
    @GetMapping("/listaComentarios")
    public String comentario(HttpSession sesion,Model model){
        Long id = (Long) sesion.getAttribute("userId");
        if(id==null){
            return "redirect:/";
        }
        List<Comentario> c = comentarioService.listaComentarios();
        model.addAttribute("comentarios",c);
        return "listaComentario.jsp";
    }
    @GetMapping("/deleteComentario/{comentarioId}")
    public String eliminarComentario( @PathVariable (name = "comentarioId")Long comentarioId,HttpSession sesion){
        Long id = (Long) sesion.getAttribute("userId");
        if(id==null){
            return "redirect:/";
        }
        comentarioService.eliminarPorId(comentarioId);
        return "redirect:/listaComentarios";
    }
    @GetMapping("/nuevoEstablecimiento")
    public String cursoNuevo(@ModelAttribute("colegio")Colegio colegio,HttpSession sesion,Model model){
        Long id = (Long) sesion.getAttribute("userId");
        if(id==null){
            return "redirect:/";
        }
        List<Comuna> c = comunaService.findAll();
        model.addAttribute("comunas",c);
        return "nuevoColegio.jsp";
    }
    @PostMapping("/nuevoEstablecimiento")
    public String crearColegio(@Valid @ModelAttribute("colegio")Colegio colegio,BindingResult result,HttpSession sesion){
        Long id = (Long) sesion.getAttribute("userId");
        if(id==null){
            return "redirect:/";
        }
        if(result.hasErrors()){
            return "nuevoColegio.jsp";
        }
        colegioService.crearColegio(colegio);
        return "redirect:/panelAdmin";
    }
}
