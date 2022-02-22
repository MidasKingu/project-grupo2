<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 21-02-2022
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Registro</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/reg/style.css">
</head>
<body>
    <form:errors path="user.*"/>
<form:form class="form" action="/adminReg" method="post" modelAttribute="user">
    <div class="container register-form">
        <div class="form">
            <div class="note">
                <p>Registre un nuevo usuario administrador.</p>
            </div>

            <div class="form-content">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <form:input path="email" class="form-control" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <form:input path="contraseña" class="form-control" placeholder="Contraseña"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <form:input path="confirmacionContraseña" class="form-control" placeholder="Confirm. Contraseña"/>
                        </div>
                        <div class="form-group">
                            <form:input path="confirmacionCodigo" class="form-control" placeholder="Codigo Secreto"/>
                        </div>
                    </div>
                </div>
                <form:button class="btnSubmit">Registrar</form:button>
            </div>
        </div>
    </div>
</form:form>

</body>
</html>
