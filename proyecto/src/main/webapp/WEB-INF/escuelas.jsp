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
    <link rel="stylesheet" href="/listaColegios/styleEscuelaLaFlorida.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="/listaColegios/dark.css">

    <script src="https://kit.fontawesome.com/03a89292db.js" crossorigin="anonymous"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
    <header class="showcase">
        <h1 style="text-transform: uppercase"> <span class="textoborde">ESTABLECIMIENTOS EN <c:out value="${comuna.nombre}"/>  </span></h1>
        <h2 class="region"><span class="texto_borde"><c:out value="${comuna.region.nombre}"/></span></h2>
    </header>
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
<main>
    <c:forEach items="${colegios}" var="c">
        <div class="container">
             <div class="row" ">
                 <div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6" style="background-color: rgba(0,113,255,0.51);border-radius: 30px;margin-bottom: 10px;">
                     <div class="well profile" style="background-color: transparent; border: none" >
                         <div class="col-sm-12">
                             <div class="col-xs-12 col-sm-8">
                                 <h2><c:out value="${c.nombre}"/></h2>
                                 <p><strong>Dirección </strong> <c:out value="${c.direccion}"/> </p>
                                 <p><strong>Numero  </strong><c:out value="${c.telefono}"/></p>
                             </div>
                             <div class="col-xs-12 col-sm-4 text-center">
                                 <figure>
                                     <img src="http://www.localcrimenews.com/wp-content/uploads/2013/07/default-user-icon-profile.png" alt="" class="img-circle img-responsive">
                                 </figure>
                             </div>
                         </div>
                         <div class="col-xs-12 divider text-center">
                             <div class="col-xs-12 col-sm-4 emphasis">
                                 <a href="/moreInfo/<c:out value="${c.id}"/>"><button class="btn btn-info btn-block"><span class="fa fa-user"></span> Mas información </button></a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
    </c:forEach>
    <footer>
        <div class="iconos">
            <a href="../index.html" <i class="fa-solid fa-house"> inicio</i></a>
            <a href="../informacion/informaciones.html" <i class="fa-solid fa-circle-info"> informacion</i></a>
            <a href="../donaciones/donaciones.html" <i class="fa-regular fa-money-bill-1"> donaciones</i></a>
            <a href="../sobre nosotros/index.html" <i class="fa-solid fa-user-group">sobre nosotros</i></a>
            <a href="../comentarios/index.html" <i class="fa-regular fa-comment-dots"> comentarios</i></a>
        </div>
    </footer>
</main>

</body>
</html>
