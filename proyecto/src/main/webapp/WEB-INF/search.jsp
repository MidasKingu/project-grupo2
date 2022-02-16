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
    <link rel="stylesheet" href="css/busqueda.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">
</head>
<body>
<header><h1>Búsqueda de Establecimientos</h1>
</header>
<div class="audio">
    <audio controls>
        <source src="audio.ogg" type="audio/ogg">
        <source src="audio/audio.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <h4>Por Regiones:</h4>
    <form action="/escuelas" method="get" >
       <label path="#">Por regiones:</label>
        <select class="regiones" name="regionId" onchange="busqueda()" id="regionId">
            <option value="#">Seleccione...</option>
            <c:forEach items="${regiones}" var="region">
                <option value="<c:out value="${region.id}"/>"><c:out value="${region.nombre}"/></option>
            </c:forEach>
        </select>

           <select class="comuna" name="comunaId" >
               <option value="#">Seleccione..</option>
               <c:forEach var="com" items="${comunas}">
                   <option value="<c:out value="${com.id}"/>" ><c:out value="${com.nombre}"/></option>
               </c:forEach>
           </select>
        <input type="submit" value="Buscar">
    </form>

    <footer>
        <div class="iconos">
            <a href="index.html" ><i class="fa-solid fa-house"> inicio</i></a>
            <a href="busqueda/busqueda.html" ><i class="fa-solid fa-circle-info"> informacion</i></a>
            <a href="#" ><i class="fa-regular fa-money-bill-1"> donaciones</i></a>
            <a href="#" ><i class="fa-solid fa-user-group"> sobre nosotros</i></a>
            <a href="#" ><i class="fa-regular fa-comment-dots"> comentarios</i></a>
        </div>
    </footer>
    <script>
        function busqueda(){
            window.location.href="/busqueda?regionId="+document.getElementById("regionId").value;
        }
    </script>
</body>

</html>
