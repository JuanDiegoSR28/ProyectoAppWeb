<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.itson.proyectoappweb.modelo.dominio.TipoUsuario" %>
<%@ page import="mx.itson.proyectoappweb.modelo.dominio.Usuario"%>
<%@ page import="mx.itson.proyectoappweb.modelo.facbricadao.FabricaDAO"%>
<%@ page import="mx.itson.proyectoappweb.modelo.dominio.Producto"%>

<%
    

 
    
    // Obtener información del usuario logueado
    String username = (String) session.getAttribute("nombreUsuarioSesion"); 
    
    String userType = (String) session.getAttribute("tipo_usuarioSesion");
    


%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menú Administrador</title>
        <style>
            /* Estilos generales */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #ffffff;
            }

            /* Encabezado */
            header {
                background-color: #FEC106;
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                box-shadow: 0 0.15rem 1.75rem 0 rgb(58 59 69 / 15%);
            }

            .logo {
                font-weight: bold;
                font-size: 1.2rem;
            }

            nav ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: flex;
            }

            nav li {
                margin-right: 20px;
            }

            nav a {
                color: #000;
                text-decoration: none;
            }

            .user-info {
                color: #000;
            }

            /* Contenido principal */
            main {
                display: flex;
                height: calc(100vh - 56px); /* Ajusta la altura según sea necesario */
            }

            .sidebar {
                background-color: #2A2B2B;
                color: #ffffff;
                width: 250px;
                padding: 20px;
                height: 100%; /* La barra lateral abarca toda la altura */
                overflow-y: auto; /* Agrega scroll vertical si es necesario */
            }

            .section {
                margin-bottom: 30px;
            }

            .section h3 {
                font-size: 1rem;
                margin-bottom: 10px;
            }

            .section ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .section li {
                margin-bottom: 5px;
            }

            .section a {
                color: #ffffff;
                text-decoration: none;
                cursor: pointer;
            }

            .content {
                flex-grow: 1;
                padding: 20px;
            }

            .form-container, .table-container {
                display: none;
            }

            #addProductForm {
                background-color: #f5f5f5;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                display: none; /* Ocultar el formulario inicialmente */
            }

            #addProductForm input,
            #addProductForm select {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            #addProductForm button {
                background-color: #333;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }
        </style>
    </head>
    <body >
        <header>
            <div class="logo">Botas Jusaino</div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                </ul>
            </nav>
            <div class="user-info"><%= username %></div>
        </header>

        <main>

            <nav class="sidebar">
                <div class="section">
                    <h3>Usuarios</h3>
                    <ul>
                        <li><a id="updateUserLink" onclick="hideUpdateUserContent()">Actualizar Usuario</a></li>
                        <li><a id="deleteUserLink" onclick="hideUpdateUserContent()">Eliminar Usuario</a></li>
                    </ul>
                </div>
                <div class="section">
                    <h3>Productos</h3>
                    <ul>
                        <li><a id="addProductLink">Agregar Producto</a></li>
                        <li><a id="updateProductLink">Actualizar Producto</a></li>
                        <li><a id="deleteProductLink">Eliminar Producto</a></li>
                    </ul>
                </div>
            </nav>

            <section class="content">


                <form action="/ProyectoAppWeb/SrvSearchUser" method="post" >

                    <div class="table-container" id="updateUserTable">
                        <h2>Actualizar Usuario</h2>
                        <input type="text" placeholder="Escribe el ID del usuario" name="idPrueba">
                        <br>
                        <br>
                        <input type="submit" value="Buscar usuario" id="submitBtn">  
                    </div>            
                </form>






                <div class="form-container" id="addProductForm">
                    <h2>Agregar Producto</h2>
                    <form>
                        <input type="text" placeholder="Código de barras" required>
                        <select required>
                            <option value="">Categoría</option>
                            <!-- Opciones de categoría -->
                        </select>
                        <input type="text" placeholder="Nombre" required>
                        <textarea placeholder="Descripción" required></textarea>
                        <input type="color" placeholder="Color" required>
                        <input type="text" placeholder="Talla" required>
                        <input type="number" placeholder="Cantidad" required>
                        <button type="submit">Guardar</button>
                    </form>
                </div>

                <div class="table-container" id="updateProductTable">
                    <h2>Actualizar Producto</h2>
                    <table>
                        <!-- Tabla con lista de productos para actualizar -->
                    </table>
                    <button id="updateProductBtn">Actualizar Producto</button>
                    <br>
                </div>

                <div class="table-container" id="deleteUserTable">
                    <h2>Eliminar Usuario</h2>
                    <table>
                        <!-- Tabla con lista de usuarios para eliminar -->
                    </table>
                    <button id="deleteUserBtn">Eliminar Usuario</button>
                </div>

                <div class="table-container" id="deleteProductTable">
                    <h2>Eliminar Producto</h2>
                    <table>
                        <!-- Tabla con lista de productos para eliminar -->
                    </table>
                    <button id="deleteProductBtn">Eliminar Producto</button>
                </div>



                <div id="inicial" class="content-section">
                    <h2>Usuarios registrados:</h2>
                    <table border="1 ">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Fecha nacimiento</th>
                                <th>Genero</th>
                                <th>Nombre(s)</th>
                                <th>Teléfono</th>
                                <th>Tipo Usuario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%List<Usuario> listaUsuarios = (List<Usuario>) request.getAttribute("listaUsuarios");
                                 if(listaUsuarios != null)
                                 {
                                 for(Usuario usuario: listaUsuarios){
                                 
                            %>
                            <tr>
                                <td><%= usuario.getId_usuario() %></td>
                                <td><%= usuario.getApellido_paterno() %></td>
                                <td><%= usuario.getApellido_materno() %></td>
                                <td>FECHA</td>
                                <td><%= usuario.getGenero() %></td>
                                <td><%= usuario.getNombres() %></td>
                                <td><%= usuario.getTelefono() %></td>
                                <td><%= usuario.getTipo_usuario() %></td>

                            </tr>
                            <% 
                                }
                            } else {
                            %>
                            <tr>
                                <td colspan="3">No hay usuarios para mostrar.</td>
                            </tr>
                            <% } %>

                        </tbody>
                    </table>
                    <h2>Productos registrados:</h2>
                    <table border="1 ">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Código</th>
                                <th>Color</th>
                                <th>Descripción</th>
                                <th>Marca</th>
                                <th>Material</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%List<Producto> listaProductos = (List<Producto>) request.getAttribute("listaProductos");
                                 if(listaProductos != null)
                                 {
                                 for(Producto producto: listaProductos){
                                 
                            %>
                            <tr>
                                <td><%= producto.getId_producto() %></td>
                                <td><%= producto.getCodigo() %></td>
                                <td><%= producto.getColor() %></td>
                                <td><%= producto.getDescrpcion() %></td>
                                <td><%= producto.getMarca() %></td>
                                <td><%= producto.getMaterial() %></td>
                                <td><%= producto.getNombre() %></td>
                                <td><%= producto.getPrecio() %></td>


                            </tr>
                            <% 
                                }
                            } else {
                            %>
                            <tr>
                                <td colspan="3">No hay productos para mostrar.</td>
                            </tr>
                            <% } %>

                        </tbody>
                    </table>
                </div>



            </section>

        </main>

        <script>
            // Función para mostrar/ocultar contenido
            function showContent(contentId) {
                const contents = document.querySelectorAll('.form-container, .table-container');
                contents.forEach(content => {
                    content.style.display = 'none';
                });
                document.getElementById(contentId).style.display = 'block';
            }

            // Evento de clic para mostrar el formulario de agregar producto
            document.getElementById('addProductLink').addEventListener('click', () => showContent('addProductForm'));

            // Eventos de clic para otros enlaces
            document.getElementById('updateUserLink').addEventListener('click', () => showContent('updateUserTable'));
            document.getElementById('updateProductLink').addEventListener('click', () => showContent('updateProductTable'));
            document.getElementById('deleteUserLink').addEventListener('click', () => showContent('deleteUserTable'));
            document.getElementById('deleteProductLink').addEventListener('click', () => showContent('deleteProductTable'));
        </script>



        <script>
            // Función para ocultar el div principal
            function hideUpdateUserContent() {
                var updateUserContent = document.getElementById('inicial');
                updateUserContent.style.display = 'none';
            }
        </script>
    </body>
</html>
