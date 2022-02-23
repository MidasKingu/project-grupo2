<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 23-02-2022
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Comentarios</title>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="/panel/estilo.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="panel panel-default widget">
            <div class="panel-heading">
                <span class="glyphicon glyphicon-comment"></span>
                <h3 class="panel-title">
                    Recent Comments</h3>
                <span class="label label-info">
                    ${comentarios.size()}</span>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <c:forEach items="${comentarios}" var="c">
                    <li class="list-group-item">

                        <div class="row">
                            <div class="col-xs-2 col-md-1">
                                <img src="http://placehold.it/80" class="img-circle img-responsive" alt="" /></div>

                                <div class="col-xs-10 col-md-11">
                                    <div>
                                        <h4><c:out value="${c.nombre}"/></h4>
                                        <div class="mic-info">
                                              Creado en : <c:out value="${c.createdAt}"/>
                                        </div>
                                    </div>
                                    <div class="comment-text">
                                        <c:out value="${c.contenido}"/>
                                    </div>
                                    <div class="action">
                                        <a href="/deleteComentario/${c.id}">
                                            <button type="button" class="btn btn-danger btn-xs" title="Delete">
                                            <span class="glyphicon glyphicon-trash"></span>
                                        </button></a>
                                    </div>
                                </div>
                        </div>

                    </li>
                    </c:forEach>
                </ul>
                <a href="#" class="btn btn-primary btn-sm btn-block" role="button"><span class="glyphicon glyphicon-refresh"></span> More</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
