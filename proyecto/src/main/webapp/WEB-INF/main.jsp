<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 10-02-2022
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página card</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/dark.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>

<body class="">
<header>
    <h1><span class="textoborde">Portal Especial avanzando Contigo</span></h1>
</header>
<main>
    <hr>
    <p class="descripcion">"No se trata de tener derecho a ser iguales, si no de tener igual derecho a ser diferentes"
    </p>
    <hr>
    <div class="contenedor">
        <div class="modo" id="modo">
            <i class="fas fa-toggle-on"></i>
        </div>
        <div class="audio">
            <audio controls>
                <source src="audio.ogg" type="audio/ogg">
                <source src="audio.mp3" type="audio/mpeg">
                Your browser does not support the audio element.
            </audio>
        </div>
    </div>
    <section class="card">
        <div class="card__perfil">
            <div class="card__nombre">
                <img src="/img/escuela.jfif" alt="">
                <br></br>
                <h2>Busqueda de Establecimientos</h2>
                <p></p>
            </div>
            <hr class="hr1">
            <div class="card__descripcion">
                <p></p>
            </div>
            <hr class="hr1">
            <div class="card__button">
                <a class="enlace" href="/busqueda">Saber más</a>
            </div>
        </div>
        <div class="card__perfil">
            <div class="card__nombre">
                <img src="/img/juegos.jfif" alt="">
                <br></br>
                <h2>Juegos educativos</h2>
                <p></p>
            </div>
            <hr class="hr1">
            <div class="card__descripcion">
                <p></p>
            </div>
            <hr class="hr1">
            <div class="card__button">
                <a class="enlace" target="_blank" href="https://arbolabc.com">Jugar</a>
            </div>
        </div>
        <div class="card__perfil">
            <div class="card__nombre">
                <img src="/img/video.png" alt="">
                <br></br>
                <h2>Videos educativos</h2>
                <p></p>
            </div>
            <hr class="hr1">
            <div class="card__descripcion">
                <p></p>
            </div>
            <hr class="hr1">
            <div class="card__button">
                <a class="enlace" href="videos/videos.html">Ver videos</a>
            </div>
        </div>
    </section>
    <center><div class="barra">
        <p>La educación especial está diseñada para satisfacer las necesidades particulares de cada niño. Es por eso que
            necesitan las herramientas para desarrollarse, crecer y aprender, sin importar sus capacidades,
            <strong>todos y cada uno de ellos</strong>, merecen recibir una educación de calidad.</p>
    </div></center>
</main>
<footer>
    <footer>
        <div class="iconos">
            <a href="/" <i class="fa-solid fa-house"> inicio</i></a>
            <a href="informacion/info.html" <i class="fa-solid fa-circle-info"> informacion</i></a>
            <a href="donaciones/donaciones.html" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
            <a href="sobre nosotros/index.html" <i class="fa-solid fa-user-group"> nosotros</i></a>
            <a href="comentarios/index.html" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
        </div>
    </footer>


    <script src="js/main.js"></script>
</body>
</html>
