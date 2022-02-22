package com.grupodos.proyecto.repositories;

import com.grupodos.proyecto.models.UserAdmin;
import lombok.Data;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface AdminRepo extends CrudRepository<UserAdmin,Long>{
    UserAdmin findByEmail(String email);

}
