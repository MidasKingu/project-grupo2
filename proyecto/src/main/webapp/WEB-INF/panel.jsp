<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 22-02-2022
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Panel admin</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body style="">
    <div>
        <section class="card">
            <div class="card__perfil">
                <div class="card__nombre">
                    <img src="/panel/icono comentario.png" alt="">
                    <br></br>
                    <h2>Comentarios</h2>
                    <p></p>
                </div>
                <hr class="hr1">
                <div class="card__descripcion">
                    <p></p>
                </div>
                <hr class="hr1">
                <div class="card__button">
                    <a class="enlace" href="/listaComentarios">Ver</a>
                </div>
            </div>
            <div class="card__perfil">
                <div class="card__nombre">
                    <img src="/img/juegos.png.jfif" alt="">
                    <br></br>
                    <h2>Agregar Establecimientos</h2>
                    <p></p>
                </div>
                <hr class="hr1">
                <div class="card__descripcion">
                    <p></p>
                </div>
                <hr class="hr1">
                <div class="card__button">
                    <a class="enlace" target="_blank" href="/nuevoEstablecimiento">Agregar</a>
                </div>
            </div>

        </section>
    </div>

</body>
</html>
