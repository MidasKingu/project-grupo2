<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 17-02-2022
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/infoColegios/escuelas.css">
    <link rel="stylesheet" href="/infoColegios/dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>
<body>

<header><h1><span class="textoborde"></span><c:out value="${c.nombre}"/></h1></header>
<hr>
<div class="audio">
    <audio controls>
        <source src="audio.ogg" type="audio/ogg">
        <source src="audio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
</div>
<div class="carrusel">
    <ul class="carrusel-fotos">
        <c:forEach items="${c.imagenes}" var="im">
            <li id="${im.id}"><img src="${im.url}" alt="aquihayunaimg"></li>
        </c:forEach>
    </ul>
    <ul class="carrusel-menu">
        <c:forEach var="i" items="${c.imagenes}">
            <li><a class="img3" href="#${i.id}"><img src="${i.url}" alt="aquihayunaimg"></a></li>
        </c:forEach>
    </ul>
</div>
<div id="ContenedorPrincipal">
    <h4><strong>Comuna : <c:out value="${c.comuna.nombre}"/></h4></strong> <strong><h4>Privacidad : <c:out value="${c.privacidad}"/></h4></strong>

    <p><strong>Sostenedor:</strong> <c:out value="${c.sostenedor}"/></p>

    <p><strong>Enseñanzas:</strong> <c:out value="${c.enseñanzas}"/></p>

    <p><strong>Pago:</strong><c:out value="${c.pago}"/></p>

    <p><strong>Oportunidades Educativas:</strong> <c:out value="${c.oportunidades_educativas}"/></p>

    <p><strong>Infraestructura Educativa:</strong><c:out value="${c.infraestructura_educativa}"/></p>

    <p><strong>Deportes:</strong><c:out value="${c.deportes}"/></p>

    <p><strong>Actividades extraprogramáticas para alumnos:</strong><c:out value="${c.actividades_extra}"/></p>

    <p><strong>Religión:</strong> <c:out value="${c.religion}"/></p>

    <p><strong>Énfasis del proyecto educativo:</strong><c:out value="${c.enfasis_edu}"/></p>

    <p><strong>Programa de formación en:</strong> <c:out value="${c.programa_formacion}"/></p>

    <p><strong>Apoyo al aprendizaje:</strong> <c:out value="${c.apoyo_aprendizaje}"/></p>

    <p><strong>Necesidades educativas especiales (NEE) que incorpora:</strong> <c:out value="${c.nee}"/></p>

    <p><strong>Programa y actividades para padres y apoderados:</strong> <c:out value="${c.programa_apoderados}"/></p>

    <p><strong>Dirección del establecimiento:</strong><c:out value="${c.direccion}"/></p>

    <p><strong>Teléfono:</strong> <c:out value="${c.telefono}"/></p>

    <p><strong>email/ correo electrónico:</strong> <c:out value="${c.email}"/></p>

    <div class="mapouter col"><div class="gmap_canvas"><iframe width="100%" height="220" id="gmap_canvas" src="https://maps.google.com/maps?q=${c.direccion.replace(" ","%20")}%20${c.comuna.nombre.replace(" ","%20")}&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org/%22%3E</a><br><style>.mapouter{position:relative;text-align:right;height:300px;width:100%;}</style><a href="https://www.embedgooglemap.net/%22%3E</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:100%;}</style></div></div>
</div>
<br><br><br><br><br>





<footer>
    <div class="iconos">
        <a href="/"><i class="fa-solid fa-house"> inicio</i></a>
        <a href="/informacion"><i class="fa-solid fa-circle-info"> informacion</i></a>
        <a href="/donaciones"><i class="fa-regular fa-money-bill-1"> donaciones</i></a>
        <a href="/sobreNosotros"><i class="fa-solid fa-user-group"> sobre nosotros</i></a>
        <a href="/comentarios"><i class="fa-regular fa-comment-dots"> comentarios</i></a>
    </div>
</footer>
<div style="height: 180px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M-0.84,16.30 C213.03,144.58 341.13,-58.69 499.72,67.61 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #D885A3;"></path></svg></div>
<script src="/infoColegios/main.js"></script>
</body>
</html>
