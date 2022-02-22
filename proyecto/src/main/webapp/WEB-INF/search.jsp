<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 11-02-2022
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busqueda de Establecimientos</title>
    <link rel="stylesheet" href="/busquedaNuevo/estilo.css">
    <link rel="stylesheet" href="/busquedaNuevo/dark.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
</head>
<body class="">
<header class="showcase">
    <h1><span class="textoborde">BUSQUEDA DE ESTABLECIMIENTOS</span></h1>
</header>
<div class="audio">
    <audio controls>
        <source src="/busquedaNuevo/audio.ogg" type="audio/ogg">
        <source src="/busquedaNuevo/audio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <div class="modo" id="modo">
        <i class="fas fa-toggle-on"></i>
    </div>
</div>
<h4>Por Regiones:</h4>
<form action="/escuelas" method="get" >
<select class="regiones" name="regionId" onchange="busqueda()" id="regionId">
    <option value="#">Seleccione..</option>
    <c:forEach items="${regiones}" var="region">
        <option value="<c:out value="${region.id}"/>"><c:out value="${region.nombre}"/></option>
    </c:forEach>
</select>

<h4>Seleccione Comuna:</h4>
<select class="comuna" name="comunaId" >
    <c:forEach var="com" items="${comunas}">
        <option value="<c:out value="${com.id}"/>" ><c:out value="${com.nombre}"/></option>
    </c:forEach>
    <br>
</select>
<br/>
<input type="submit" value="Buscar">
</form>
<footer>
    <div class="iconos">
        <a href="/" <i class="fa-solid fa-house"> inicio</i></a>
        <a href="/informacion" <i class="fa-solid fa-circle-info"> informacion</i></a>
        <a href="/donaciones" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
        <a href="/sobreNosotros" <i class="fa-solid fa-user-group"> sobre nosotros</i></a>
        <a href="/comentarios" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
    </div>
</footer>
<script>
    function busqueda(){
        window.location.href="/busqueda?regionId="+document.getElementById("regionId").value;
    }

</script>

<script src="/busquedaNuevo/main.js"></script>
</body>
</html>

</html>
