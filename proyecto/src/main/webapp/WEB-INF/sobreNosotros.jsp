<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 21-02-2022
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SOBRE NOSOTROS</title>
    <link rel="stylesheet" href="/sobreNosotros/style.css">
    <link rel="stylesheet" href="/sobreNosotros/dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>

<body>
<header>
    <h1><span class="textoborde">SOBRE NOSOTROS</span></h1>
    <div class="limpiar_float"></div></header>
<div class="audio">
    <audio controls>
        <source src="/sobreNosotros/audio.ogg" type="audio/ogg">
        <source src="/sobreNosotros/audio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
</div>
<div class="img_danny">
    <img class="danny" src="/sobreNosotros/Danny.jpeg" alt="">
    <p class="nombre_danny">Danny Opazo</p>
</div>
<div class="img_janis">
    <img class="janis" src="/sobreNosotros/Janis.jpeg" alt="">
    <p class="nombre_janis">Janis Aravena</p>

</div>
<div class="img_gabi">
    <img class="gabi" src="/sobreNosotros/Maria Gabriela.jpeg" alt="">
    <p class="nombre_gabi">Maria Gabriela Barradas</p>
</div>
<div class="img_ismael">
    <img class="ismael" src="/sobreNosotros/Ismael.jpeg" alt="">
    <p class="nombre_ismael">Ismael Silva</p>
</div>
<div class="limpiar_float"></div>
<div class="cuadro_texto">
    <hr class="linea_text">
    <blockquote><span class="comilla" >"</span> Somos un grupo de jóvenes que nos esforzamos por brindar apoyo y ayuda necesaria a padres, apoderados o
        familiares que buscan el mejor establecimiento para sus hijos/hijas con capacidades diferentes. <br>
        Nuestra meta y objetivo es ayudar, informar y educar. Por eso cada uno de los integrantes del equipo nos
        comprometimos para cumplir los objetivos planteados. <span class="comilla" >"</span></blockquote>
    <hr class="linea_text">
</div>
<div class="img_daniel">
    <img class="daniel" src="/sobreNosotros/Daniel.jpeg" alt="">
    <p class="nombre_daniel">Daniel Masbernat</p>
</div>
<div class="img_ignacio">
    <img class="ignacio" src="/sobreNosotros/Ignacio.jpeg" alt="">
    <p class="nombre_ignacio">Ignacio Carvajal</p>
</div>
<div class="img_jorge">
    <img class="jorge" src="/sobreNosotros/Jorge.jpeg" alt="">
    <p class="nombre_jorge">Jorge Saavedra</p>
</div>
<footer>
    <footer>
        <div class="iconos">
            <a href="/" <i class="fa-solid fa-house"> inicio</i></a>
            <a href="/informacion" <i class="fa-solid fa-circle-info"> informacion</i></a>
            <a href="/donaciones" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
            <a href="/sobreNosotros" <i class="fa-solid fa-user-group"> nosotros</i></a>
            <a href="/comentarios" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
        </div>
    </footer>

    <script src="/sobreNosotros/main.js"></script>
</body>
</html>
