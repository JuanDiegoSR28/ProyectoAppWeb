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

        <form  action="/ProyectoAppWeb/SrvLogin" method="post">
            <div class="correo">
                <input type="email" required placeholder="Correo eletrónico"name="email">
            </div>
            <div class="contraseña">
                <input type="password" required placeholder="Contraseña" name="password">
            </div>
            <input type="submit" value="Iniciar" id="submitBtn">
            <div class="registrarse">
                ¿No tienes cuenta? <a href="SCE_register.jsp">Regístrate</a>
            </div>
        </form>
    </main>

</body>
</html>
