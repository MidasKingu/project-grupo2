<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 17-02-2022
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMENTARIOS</title>
    <link rel="stylesheet" href="/comentarios/style.css">
    <link rel="stylesheet" href="/comentarios/dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/reg/style.css">
</head>

<body>
<header class="showcase">
    <h1><span class="textoborde">AYÚDANOS A MEJORAR</span></h1>
</header>
<hr>
<div class="audio">
    <audio controls>
        <source src="/comentarios/audio.ogg" type="audio/ogg">
        <source src="/comentarios/audio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
</div>

<main>

    <form:form class="formulario" modelAttribute="comentario">

        <div class="container register-form">
            <div class="form">
                <div class="note">
                    <H2>DÉJANOS TU COMENTARIO!!!</H2>
                </div>

                <div class="form-content" style="background-color: white">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:input path="nombre" placeholder="Nombre :" class="cuadro_nombre"></form:input>
                            </div>
                            <div class="form-group">
                                <form:input path="email" placeholder="Email" class="cuadro_email"></form:input>
                            </div>
                            <div class="form-group">
                                <form:select path="tipoComentario" placeholder="Email" class="tipo_comentario" >
                                    <form:option value="aspecto a mejorar">Aspectos a mejorar</form:option>
                                    <form:option value="sugerencia">Sugerencias</form:option>
                                    <form:option value="felicitaciones">Felicitaciones</form:option>
                                    <form:option value="reclamos">Reclamos</form:option>
                                </form:select>
                            </div>
                            <div class="form-group">
                                <form:textarea path="contenido" placeholder="Pon tu comentario aquí" class="hoja_comentario"></form:textarea>
                            </div>
                        </div>
                    </div>
                    <form:button class="btnSubmit">Registrar</form:button>
                </div>
            </div>
        </div>
    </form:form>
    <hr>
</main>
<br><br><br>
<footer>
    <div class="iconos">
        <a href="/" <i class="fa-solid fa-house"> inicio</i></a>
        <a href="/informacion" <i class="fa-solid fa-circle-info"> informacion</i></a>
        <a href="/donaciones" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
        <a href="/sobreNosotros" <i class="fa-solid fa-user-group"> sobre nosotros</i></a>
        <a href="/comentarios" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
    </div>
</footer>

<script src="/busquedaNuevo/main.js"></script>
</body>
</html>
