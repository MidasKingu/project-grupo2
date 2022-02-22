package com.grupodos.proyecto.services;

import com.grupodos.proyecto.models.UserAdmin;
import com.grupodos.proyecto.repositories.AdminRepo;
import lombok.Data;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@Data
public class AdminService {
    private final AdminRepo adminRepo;
    public AdminService(AdminRepo adminRepo){
        this.adminRepo = adminRepo;
    }
    public UserAdmin createAdmin(UserAdmin userAdmin ){
        if(userAdmin.getCodigo().equals(userAdmin.getConfirmacionCodigo()) && userAdmin.getContraseña().equals(userAdmin.getConfirmacionContraseña())){
             adminRepo.save(userAdmin);
        }return null;
    }
    public UserAdmin registerUser(UserAdmin user) {
        String hashed = BCrypt.hashpw(user.getContraseña(), BCrypt.gensalt());
        user.setContraseña(hashed);
        return adminRepo.save(user);
    }
    public boolean authenticateUser(String email, String password) {
        UserAdmin user = adminRepo.findByEmail(email);
        if(user == null) {
            return false;
        } else {
            if(BCrypt.checkpw(password, user.getContraseña())) {
                return true;
            } else {
                return false;
            }
        }
    }
    public UserAdmin findUserById(Long id) {
        Optional<UserAdmin> u = adminRepo.findById(id);

        if(u.isPresent()) {
            return u.get();
        } else {
            return null;
        }
    }
    public UserAdmin findByEmail(String email) {
        return adminRepo.findByEmail(email);
    }

}
