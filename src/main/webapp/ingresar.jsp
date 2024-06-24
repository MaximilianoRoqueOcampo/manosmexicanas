<%--
  Created by IntelliJ IDEA.
  User: dan-a
  Date: 23/06/2024
  Time: 11:00 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ingresar</title>
    <link rel='stylesheet' type='text/css' media='screen' href='css/bootstrap.css'>
    <style>
        #nave, #log{
            text-align: center;
        }
        header {
            width: 100%;
            background-color: #f8f9fa;
            border-bottom: 1px solid #dee2e6;
            padding: 10px 0;
        }
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        .formu{
            border-radius: 10px;
            border: 1px solid black;
            padding: 30px;
        }
        .container{
            margin-top: 3%;
        }

    </style>


</head>
<body>

<header>
    <div class="container-fluid">
        <div class="row align-items-center">
            <!--SE CREAN COLUMNAS CON TAMAÑOS PARA EL LOGO-->
            <div class="col-lg-2" id="log"><a href="index.jsp">
                <img src="img/logo.png" alt="" width="100px" height="60px"></a>
            </div>
            <!--SE CREAN COLUMNAS CON TAMAÑOS PARA LA BARRA DE BUSQUEDA-->
            <div class="col-lg-6">
                <form class="mb-2 mb-lg-0">

                </form>
            </div>
            <!--SE CREAN COLUMNAS CON TAMAÑOS PARA LOS ENLACES-->
            <div class="col-lg-4">
                <nav id="nave">
                    <a class="me-5 py-2 link-body-emphasis text-decoration-none" href="index.jsp">Catálogo</a>
                    <a class="me-5 py-2 link-body-emphasis text-decoration-none" href=""></a>
                    <a href="carrito.jsp">
                        <img src="img/carrito.png" alt="" width="35px" height="35px"></a>
                </nav>
            </div>
        </div>
    </div>
</header>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5 sidebar bg-light">
            <div class="formu">
                <h2>Inicia sesión</h2>
                <p>Ingresa tu correo electronico y contraseña para acceder a tu cuenta.</p>
                <form method="post" action="login">
                    <div class="form-group mb-3">
                        <label for="correo">Correo electronico</label>
                        <input type="text" class="form-control mb-3" id="correo" name="correo" required placeholder="Ingresa tu correo">
                    </div>
                    <div class="form-group mb-3">
                        <label for="contra">Contraseña</label>
                        <input type="password" class="form-control mb-3" id="contra" name="contra" required placeholder="Ingresa tu contraseña">
                    </div>
                    <%
                        HttpSession sesion = request.getSession();
                        String mensaje = (String) sesion.getAttribute("mensaje");

                        if(mensaje!=null){ %>
                    <p style="color: red;"><%=mensaje%></p>
                    <% } %>
                    <center>
                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                        <br> <br>
                        <p>¿No tienes una cuenta? <a href="registrarse.jsp">Crear cuenta</a></p>
                    </center>
                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>
