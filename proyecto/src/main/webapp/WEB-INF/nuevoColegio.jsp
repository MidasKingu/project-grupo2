<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 23-02-2022
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nuevo Colegio</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/reg/style.css">
    <link rel="stylesheet" href="/panel/estilo.css">
</head>
<body class="">
    <div class="">
        <div class="container register-form" style="background-color: white">
            <div class="form">
                <div class="note">
                    <p>Crear nuevo establecimiento.</p>
                </div>

                <form:form method="post" action="/nuevoEstablecimiento" modelAttribute="colegio">
                    <div class="form-content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <form:input path="nombre" type="text" class="form-control" placeholder="Nombre" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="direccion" type="text" class="form-control" placeholder="Direccion" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="email" type="text" class="form-control" placeholder="Email" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="telefono" type="text" class="form-control" placeholder="Telefono" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="privacidad" type="text" class="form-control" placeholder="Privacidad" value="" name="password"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="sostenedor" type="text" class="form-control" placeholder="Sostenedor" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="enseñanzas" type="text" class="form-control" placeholder="Enseñanzas" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="pago" type="text" class="form-control" placeholder="Pago" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="oportunidades_educativas" type="text" class="form-control" placeholder="Oportunidades Educativas" value="" name="email"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <form:input path="infraestructura_educativa" type="text" class="form-control" placeholder="Infraestructura Educativa" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="deportes" type="text" class="form-control" placeholder="Deportes" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="actividades_extra" type="text" class="form-control" placeholder="Actividades Extra" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="religion" type="text" class="form-control" placeholder="Religion" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="enfasis_edu" type="text" class="form-control" placeholder="Enfasis Educativa" value="" name="password"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="programa_formacion" type="text" class="form-control" placeholder="Programa Formacion" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="apoyo_aprendizaje" type="text" class="form-control" placeholder="Apoyo Aprendizaje" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="nee" type="text" class="form-control" placeholder="NEE" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:input path="programa_apoderados" type="text" class="form-control" placeholder="Programa Apoderados" value="" name="email"/>
                                </div>
                                <div class="form-group">
                                    <form:select path="comuna" type="text" class="form-control" placeholder="Comuna" value="" name="email">
                                        <c:forEach items="${comunas}" var="c">
                                            <form:option value="${c.id}">${c.nombre}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                        </div>
                        <input type="submit" class="btnSubmit"></input>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
