
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header class="showcase">
  <h1> <span class="textoborde">ESTABLECIMIENTOS EN <c:out value="${colegio.comuna.nombre}"/></span></h1>
  <h2 class="region"><span class="texto_borde"> <c:out value="${colegio.comuna.region.nombre}"/></span></h2>
</header>
  <main>
    <div class="escuela_1">
      <p><c:out value="${colegio.nombre}"/></p>
      <hr>
      <p>DIRECCION:<c:out value="${colegio.direccion}"/></p>
      <p>TELEFONO:<c:out value="${colegio.telefono}"/></p>
      <p>CORREO ELECTRONICO:<c:out value="${colegio.email}"/></p>
      <button class="boton_1"><a class="btn_1" href="infoEscuelas.html">VER MAS INFORMACION</a></button>
    </div>
    </div>
  </main>

</body>
</html>
