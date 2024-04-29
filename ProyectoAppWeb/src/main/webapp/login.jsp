<%-- 
    Document   : login
    Created on : 28 abr 2024, 5:43:03 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" href="assets/css/login.css">
    
</head>
<body>
    
    <main class="formulario">
        
        <h1>Inicio de Sesión</h1>

        <form method="post">
            <div class="correo">
                <input type="email" required placeholder="Correo eletrónico">

            </div>
            <div class="contraseña">
                <input type="password" required placeholder="Contraseña">
            </div>
            <input type="submit" value="Iniciar">
            <div class="registrarse">
                ¿No tienes cuenta? <a href="SCE_register.jsp">Regístrate</a>
            </div>
        </form>
    </main>
</body>
</html>