<%-- 
    Document   : SCE_register
    Created on : 28 abr 2024, 6:48:24 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar</title>
    <link rel="stylesheet" href="assets/css/SCE_register.css">
</head>

<body>
    <section class="container">
        <main class="form-outer">
            <form action="#">
                <section class="page slidepage">
                    <div class="title">Crear Cuenta</div>
                    <div class="field">
                        <div class="label">Nombre</div>
                        <input type="text" onkeyup="success1()" id="textsend1" placeholder="Escribe tu nombre...">
                    </div>
                    <div class="field">
                        <div class="label">Apellido Paterno</div>
                        <input type="text" placeholder="Escribe tu Apellido Paterno...">
                    </div>
                    <div class="field">
                        <div class="label">Apellido Materno</div>
                        <input type="text" placeholder="Escribe tu Apellido Materno...">
                    </div>
                    <div class="field nextBtn">
                        <button type="button" id="button1" disabled>Siguiente</button>
                    </div>
                </section>
                <section class="page">
                    <div class="title">Información de Contacto</div>
                    <div class="field">
                        <div class="label">Correo Electrónico</div>
                        <input type="email" id="textsend" placeholder="Escribe tu Email...">
                    </div>
                    <div class="field">
                        <div class="label">Contraseña</div>
                        <input type="password" id="password" placeholder="Escribe tu Contraseña...">
                    </div>
                    <div class="field">
                        <div class="label">Número Telefónico</div>
                        <input type="tel" id="phone" placeholder="Escribe tu Número Telefónico..." name="phone">
                    </div>
                    <div class="field buttons">
                        <button type="button" class="prev-1 prev">Anterior</button>
                        <button type="button" id="next-1" class="next-1 next" disabled>Siguiente</button>
                    </div>
                </section>

                <section class="page">
                    <div class="field">
                        <div class="label">Estado</div>
                        <input type="text" placeholder="Escribe el Estado de donde vienes...">
                    </div>
                    <div class="field">
                        <div class="label">Ciudad</div>
                        <input type="text" placeholder="Escribe tu bella Ciudad...">
                    </div>
                    <div class="field">
                        <div class="label">Código Postal</div>
                        <input type="text" placeholder="Escribe tu código postal...">
                    </div>
                    <div class="field buttons">
                        <button type="button" class="prev-2 prev">Anterior</button>
                        <button type="button" class="next-2 next">Siguiente</button>
                    </div>
                </section>

                <section class="page">
                    <div class="title">Fecha de Cumpleaños</div>
                    <div class="field">
                        <div class="label">Fecha Nacimiento</div>
                        <input type="date">
                    </div>
                    <div class="field">
                        <div class="label">Género</div>
                        <select>
                            <option value="hombre">Hombre</option>
                            <option value="mujer">Mujer</option>
                        </select>
                    </div>
                    <div class="field buttons">
                        <button type="button" class="prev-3 prev">Anterior</button>
                        <button type="button" class="next-3 next">Siguiente</button>
                    </div>
                </section>

                <section class="page">
                    <div class="title">Domicilio</div>
                    <div class="field">
                        <div class="label">Colonia</div>
                        <input type="text" placeholder="Escribe el nombre de tu colonia...">
                    </div>
                    <div class="field">
                        <div class="label">Calle</div>
                        <input type="text" placeholder="Escribe el nombre de tu calle...">
                    </div>
                    <div class="field">
                        <div class="label">Número</div>
                        <input type="text" placeholder="Escribe el número de casa...">
                    </div>
                    <div class="field buttons">
                        <button class="prev-4 prev">Anterior</button>
                        <button type="submit" class="submit next">Registrar</button>
                    </div>
                </section>
            </form>

        </main>
    </section>
    <script src="assets/js/script.js"></script>
</body>

</html>