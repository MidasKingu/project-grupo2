package com.grupodos.proyecto.validator;

import com.grupodos.proyecto.models.UserAdmin;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class AdminValidator implements Validator {
    @Override
    public  boolean supports(Class<?> clazz){
        return UserAdmin.class.equals(clazz);
    }
    @Override
    public void validate(Object target, Errors errors) {
        UserAdmin user = (UserAdmin) target;

        if(!user.getConfirmacionContraseña().equals(user.getContraseña())) {
            errors.rejectValue("passwordConfirmation","Match");
        }
        if(user.getConfirmacionCodigo()!=user.getCodigo()){
            errors.rejectValue("codeConfirmation","Match");
        }
    }


}
