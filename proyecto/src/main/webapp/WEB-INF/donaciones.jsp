<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 17-02-2022
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donaciones</title>
    <link rel="stylesheet" href="/donaciones/donaciones.css">
    <link rel="stylesheet" href="/donaciones/dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>

<body>
<header >
    <h1 class="inicio"><span class="textoborde">Donaciones</span></h1>
</header>
<hr>
<div class="audio">
    <audio controls>
        <source src="audio.ogg" type="audio/ogg">
        <source src="/donaciones/DonacionesAudio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
</div>
<main>
    <div class="asd1">
        <div class="barra1"></div>
        <h1 class="titulobarra">Tu donación puede subvencionar nuestra página</h1>
        <h3 class="subtitulobarra">Podemos llegar más lejos gracias a personas como tú, que comparten el sueño de un
            país con sonrisas para todos y todas.</h3>
        <h2 class="subtitulobarra1">Ayúdanos a mejorar la búsqueda y asi apoyar a más personas</h2>
    </div>
    <div class="caja1">
        <div class="articulo">
            <h2 class="das">Donar a Portal Especial Avanzando Contigo</h2><br>
            <p>¡Tu aporte, por pequeño que parezca, suma! Aportando a Portal Especial Avanzando Contigo estás contribuyendo a minimizar problemas que tienen muchas personas que hoy buscan un colegio o un establecimiento educacional.</p>
        </div>
        <img src="/donaciones/donar.png" alt="" width="400px">
    </div>
    <div class="imagendonar">
        <img src="https://donaronline.org/assets/illustrations/hero-10665ef3c2d17db5ec32d270b43c4fea736a786a8841007fed1fd51d72b8d830.svg" alt="imagen.exe" width="600px">
    </div>
    <hr>
    <div class="medio">
        <div class="caja3">
            <div class="articulo">
                <h2>¿Qué sucederá con tu donación?</h2><br>
                <div class="icono1">
                    <p class="as1">Ayudas a mantener la página</p>
                    <img src="/donaciones/pc.png" alt="" width="30px">
                </div>
                <div class="icono2">
                    <p class="as1">Mejoras la vida de personas que necesitan un establecimiento especial</p>
                    <img src="/donaciones/bus.png" alt="" width="30px">
                </div>
                <div class="icono3">
                    <p class="as1">Apoyas la expansión de la página a todas las regiones del país</p>
                    <img src="/donaciones/expander.png" alt="" width="30px">
                </div>
            </div>
        </div>
    </div>
    <div class="medio">
        <div class="transferencia">
            <h2 class="transcuadro">Datos Bancarios</h2>
            <ul><h4>Transferencia directamente en nuestra cuenta bancaria: </h4>
                <br>
                <li>Titular: Avanzando Contigo</li>
                <li>Cuenta Corriente: 0-000-00-00000-0</li>
                <li>Banco: Banco Estado</li>
                <li>Rut: 00.000.000-0</li>
                <li>Correo comprobante: avanzandocontigo@gmail.com</li>
            </ul>
        </div>
    </div>
</main>
<footer>
    <div class="iconos">
        <a href="/"><i class="fa-solid fa-house"> inicio</i></a>
        <a href="/informacion"><i class="fa-solid fa-circle-info"> informacion</i></a>
        <a href="/donaciones"><i class="fa-regular fa-money-bill-1"> donaciones</i></a>
        <a href="/sobreNosotros"><i class="fa-solid fa-user-group"> sobre nosotros</i></a>
        <a href="/comentarios"><i class="fa-regular fa-comment-dots"> comentarios</i></a>
    </div>
</footer>
</html>
