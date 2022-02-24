<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 21-02-2022
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/videos/videos.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">
  <link rel="stylesheet" href="/videos/dark.css">

  <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>
<body>
<header>
  <h1><span class="textoborde">Vídeos Educativos</span></h1>
</header>
<div class="audio">
  <audio controls>
    <source src="audio.ogg" type="audio/ogg">
    <source src="/videos/audio_video.mp3" type="audio/mpeg">
    Your browser does not support the audio element.
  </audio>
  <div class="modo" id="modo">
    <i class="fas fa-toggle-on"></i>
  </div>
</div>
<hr>
<section>
  <div class="abecedario">
    <h4>EL ABECEDARIO</h4>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/AV8fPO0VN14" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
  <div class="colores">
    <h4>LOS COLORES</h4>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/_MBwv0g1EIo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>

</section>

<nav>
  <div class="cuerpo">
    <h4>PARTES DEL CUERPO</h4>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/DiLZVPE3x_M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
  <div class="figuras">
    <h4>FIGURAS GEOMÉTRICAS</h4>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/8EooNSe0oA4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
</nav>
<footer>
  <footer>
    <div class="iconos">
      <a href="/" <i class="fa-solid fa-house"> inicio</i></a>
      <a href="/informacion" <i class="fa-solid fa-circle-info"> información</i></a>
      <a href="/donacion" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
      <a href="/sobreNosotros" <i class="fa-solid fa-user-group"> sobre nosotros</i></a>
      <a href="/comentarios" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
    </div>
  </footer>

  <script src="/videos/main.js"></script>
</body>
</html>
