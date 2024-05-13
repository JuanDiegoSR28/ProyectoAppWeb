<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Men� Administrador</title>
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
                height: calc(100vh - 56px); /* Ajusta la altura seg�n sea necesario */
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
            #addProductForm select,
            #addProductForm textarea{
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

            #imagePreview{
                width: 200px;
                height: 200px;
                border: 1px dashed #ccc;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 10px;
                cursor: pointer;
            }

            #imagePreview img{
                max-width: 100%;
                max-height: 100%;
            }

            /* Estilos responsivos */
            @media (max-width: 768px) {
                header {
                    flex-direction: column;
                    align-items: flex-start;
                    padding: 10px;
                }

                .logo {
                    margin-bottom: 10px;
                }

                nav ul {
                    flex-direction: column;
                }

                nav li {
                    margin-right: 0;
                    margin-bottom: 10px;
                }

                main {
                    flex-direction: column;
                    height: auto;
                }

                .sidebar {
                    width: 100%;
                    height: auto;
                }

                .content {
                    padding: 10px;
                }

                #addProductForm input,
                #addProductForm select,
                #addProductForm textarea {
                    width: 100%;
                }
            }

        </style>
    </head>
    <body>
        <header>
            <div class="logo">Botas Jusaino</div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                </ul>
            </nav>
            <div class="user-info">User</div>
        </header>

        <main>
            <nav class="sidebar">
                <div class="section">
                    <h3>Usuarios</h3>
                    <ul>
                        <li><a id="updateUserLink">Actualizar Usuario</a></li>
                        <li><a id="deleteUserLink">Eliminar Usuario</a></li>
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
                <div class="table-container" id="updateUserTable">
                    <h2>Actualizar Usuario</h2>
                    <table>
                        <!-- Tabla con lista de usuarios para actualizar -->
                    </table>
                    <button id="updateUserBtn">Actualizar Usuario</button>
                </div>

                <div class="form-container" id="addProductForm">
                    <h2>Agregar Producto</h2>
                    <form>
                        <div id="imagePreview">
                            <span>Cargar Imagen</span>
                        </div>
                        <input type="file" id="imageInput" accept="image/*" style="display: none;">
                        <input type="text" placeholder="C�digo de barras" required>
                        <select required>
                            <option value="">Marca</option>
                            <!-- Opciones de marca -->
                        </select>
                        <select required>
                            <option value="">Material</option>
                            <!-- Opciones de material -->
                        </select>
                        <input type="text" placeholder="Nombre" required>
                        <textarea placeholder="Descripci�n" required></textarea>
                        <select required>
                            <option value="">Color</option>
                            <!-- Opciones de color -->
                        </select>
                        <input type="text" placeholder="Talla" required>
                        <input type="number" placeholder="Cantidad" required>
                        <input type="text" placeholder="Precio" required>
                        <select required>
                            <option value="">Categoria</option>
                             <!-- Opciones de material -->
                        </select>
                        <select required>
                            <option value="">Estilo</option>
                            <!-- Opciones de material -->
                        </select>
                        <button type="submit">Guardar</button>
                    </form>
                </div>

                <div class="table-container" id="updateProductTable">
                    <h2>Actualizar Producto</h2>
                    <table>
                        <!-- Tabla con lista de productos para actualizar -->
                    </table>
                    <button id="updateProductBtn">Actualizar Producto</button>
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
            </section>
        </main>

        <script>
            // Funci�n para mostrar/ocultar contenido
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

            // Evento de clic para cargar imagen
            const imagePreview = document.getElementById('imagePreview');
            const imageInput = document.getElementById('imageInput');

            imagePreview.addEventListener('click', () => {
                imageInput.click();
            });

            imageInput.addEventListener('change', () => {
                const file = imageInput.files[0];
                if (file) {
                    const reader = new FileReader();
                    reader.onload = () => {
                        const img = document.createElement('img');
                        img.src = reader.result;
                        imagePreview.innerHTML = '';
                        imagePreview.appendChild(img);
                    }
                    reader.readAsDataURL(file);
                }
            });
            
            // Funci�n para generar una tabla
function generarTabla(datos, titulo) {
    const tabla = document.createElement('table');
    const encabezado = document.createElement('thead');
    const filaEncabezado = document.createElement('tr');
    const thTitulo = document.createElement('th');
    thTitulo.colSpan = datos[0].length;
    thTitulo.textContent = titulo;
    filaEncabezado.appendChild(thTitulo);
    encabezado.appendChild(filaEncabezado);
    tabla.appendChild(encabezado);

    const cuerpo = document.createElement('tbody');
    datos.forEach(fila => {
        const filaDatos = document.createElement('tr');
        fila.forEach(dato => {
            const celda = document.createElement('td');
            celda.textContent = dato;
            filaDatos.appendChild(celda);
        });
        cuerpo.appendChild(filaDatos);
    });
    tabla.appendChild(cuerpo);

    return tabla;
}
        </script>
    </body>
</html>
