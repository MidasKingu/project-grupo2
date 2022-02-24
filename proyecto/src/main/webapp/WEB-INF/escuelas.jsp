<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 14-02-2022
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ESTABLECIMIENTOS EN LA FLORIDA</title>
    <link rel="stylesheet" href="/listaColegios/styleEscuelaLaFlorida.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="/listaColegios/dark.css">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>

<body>
<header class="showcase">
    <h1 style="text-transform: uppercase"> <span class="textoborde">ESTABLECIMIENTOS EN ${comuna.nombre}</span></h1>
</header>
<div class="audio">
    <audio controls>
        <source src="/listaColegios/audio.ogg" type="audio/ogg">
        <source src="/listaColegios/audio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
</div>
<main >

        <section class="card" >
            <c:forEach items="${colegios}" var="c">
            <div class="card__perfil" style="display: inline-block">
                <div class="card__nombre">
                    <img src="https://th.bing.com/th/id/R.e7f5224c5fa88ddc9b506096f72ae7fb?rik=%2bql1MaLqtRcQEQ&pid=ImgRaw&r=0" alt="img">
                    <br></br>
                    <h2><c:out value="${c.nombre}"/></h2>
                    <p></p>
                </div>
                <hr class="hr1">
                <div class="card__descripcion">
                    <p>DIRECCION:
                        <c:out value="${c.direccion}"/> <br>
                        TELEFONO: <br>
                        +56<c:out value="${c.telefono}"/> <br>
                        CORREO ELECTRONICO: <br>
                        <c:out value="${c.email}"/> <br></p>
                </div>
                <hr class="hr1">
                <div class="card__button">
                    <a class="enlace" href="/moreInfo/+<c:out value="${c.id}"/>">Saber más</a>
                </div>
            </div>
            </c:forEach>
        </section>

</main>
<footer>
    <div class="iconos">
        <a href="/" <i class="fa-solid fa-house"> inicio</i></a>
        <a href="/informacion" <i class="fa-solid fa-circle-info"> informacion</i></a>
        <a href="/donaciones" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
        <a href="/sobreNosotros" <i class="fa-solid fa-user-group">sobre nosotros</i></a>
        <a href="/comentarios" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
    </div>
</footer>

<script src="/donaciones/main.js"></script>
</body>
</html>
