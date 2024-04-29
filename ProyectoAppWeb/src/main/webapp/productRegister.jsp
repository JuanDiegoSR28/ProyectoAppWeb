<%-- 
    Document   : productRegister
    Created on : 28 abr 2024, 19:35:29
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Botas Jusano</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        header {
            background-color: #ffcc00;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logo {
            display: flex;
            align-items: center;
        }
        .logo img {
            height: 100px;
            margin-right: 100px;
        }
        nav ul {
            display: flex;
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        nav ul li {
            margin-right: 20px;
        }
        nav ul li a {
            color: #333;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        nav ul li a:hover {
            color: #ff6600;
        }
        .search-cart {
            display: flex;
            align-items: center;
        }
        .search-cart input {
            padding: 8px 12px;
            border-radius: 20px;
            border: 1px solid #ccc;
            outline: none;
        }
        .search-cart .icon {
            margin-left: 10px;
            color: #666;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .search-cart .icon:hover {
            color: #ff6600;
        }
        main {
            max-width: 800px;
            margin: 40px auto;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
        }
        .product-form {
            display: flex;
            align-items: flex-start;
        }
        .product-image {
            border: 1px dashed #ccc;
            width: 300px;
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            border-radius: 5px;
            overflow: hidden;
        }
        .product-image img {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain;
        }
        .product-image input[type="file"] {
            position: absolute;
            opacity: 0;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }
        .product-details {
            margin-left: 20px;
            display: flex;
            flex-wrap: wrap;
            flex: 1;
        }
        .product-details input,
        .product-details select,
        .product-details textarea {
            margin-bottom: 10px;
            padding: 8px 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
            outline: none;
            width: 100%;
        }
        .color-size {
            display: flex;
            justify-content: space-between;
            width: 100%;
        }
        .color-size select {
            width: 48%;
        }
        button {
            background-color: #ffcc00;
            color: #000;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #e65c00;
        }
        .quantity {
            margin-top: 10px;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="assets/images/logo BotasJusaino.png" alt="Logo de la empresa">
        </div>
        <nav>
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Hombres</a></li>
                <li><a href="#">Muejeres</a></li>
                <li><a href="#">Niños</a></li>
            </ul>
        </nav>
        <div class="search-cart">
            <input type="text" placeholder="Buscar" name="Buscar">
            <i class="fas fa-search icon"></i>
            <i class="fas fa-shopping-cart icon"></i>
            <i class="fas fa-user icon"></i>
        </div>
    </header>
    <main>
        <section class="product-form">
            <div class="product-image">
                <img src="placeholder.jpg" alt="Imagen del producto">
                <input type="file" id="product-image-input" accept="image/*" name="ImagenProducto">
                <label for="product-image-input">Subir imagen</label>
            </div>
            <div class="product-details">
                <input type="text" placeholder="CODIGO DE BARRAS" name="CodigoBarras">
                <select>
                    <option value="">CATEGORIA</option>
                </select>
                 <select>
                    <option value="">MARCA</option>
                </select>
                <select>
                    <option value="">MATERIAL</option>
                </select>
                <input type="text" placeholder="NOMBRE" name="Nombre">
                <textarea placeholder="DESCRIPCIÓN" rows="4"></textarea>
                <div class="color-size">
                    <select>
                        <option value="">COLOR</option>
                    </select>
                    <select>
                        <option value="">TALLA</option>
                    </select>
                <input type="text" placeholder="PRECIO" name="Precio">
                </div>
                <button>GUARDAR</button>
            </div>
        </section>
    </main>
</body>
</html>
</html>
