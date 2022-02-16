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
    <title>Establecimientos</title>
    <link rel="stylesheet" href="styleEscuelaLaFlorida.css">

</head>

<body>
<header class="showcase">
    <h1> <span class="textoborde">ESTABLECIMIENTOS EN <c:out value="${comuna.nombre}"/>  </span></h1>
    <h2 class="region"><span class="texto_borde">aaaa <c:out value="${comuna.region.nombre}"/></span></h2>
</header>
<main>
    <c:forEach items="${colegios}" var="c">
        <div class="escuela_1">

            <hr>
            <p><c:out value="${c.nombre}"/></p>
            <p>DIRECCION:<c:out value="${c.direccion}"/></p>
            <p>TELEFONO:<c:out value="${c.telefono}"/></p>
            <p>CORREO ELECTRONICO:<c:out value="${c.email}"/></p>
            <button class="boton_1"><a class="btn_1" href="/moreInfo/<c:out value="${c.id}"/>">VER MAS INFORMACION</a></button>
        </div>
    </c:forEach>
    </div>

</main>

</body>
</html>
