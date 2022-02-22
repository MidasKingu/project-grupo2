<%--
  Created by IntelliJ IDEA.
  User: Jorge
  Date: 21-02-2022
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/reg/style.css">
</head>
<body>
<div class="container register-form">
    <div class="form">
        <div class="note">
            <p>Autenticar como administrador.</p>
        </div>

        <form method="post" action="/login">
            <div class="form-content">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Email" value="" name="email"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Contraseña" value="" name="password"/>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btnSubmit"></input>
            </div>
        </form>
    </div>
</div>
</body>
</html>
