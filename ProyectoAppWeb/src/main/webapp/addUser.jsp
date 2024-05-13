<%-- 
    Document   : products
    Created on : 28 abr 2024, 5:41:13 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <title>Botas Jusaino - Registrar</title>


        <!-- Additional CSS Files -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

        <link rel="stylesheet" href="assets/css/owl-carousel.css">

        <link rel="stylesheet" href="assets/css/lightbox.css">
        <!--
        
        TemplateMo 571 Hexashop
        
        https://templatemo.com/tm-571-hexashop
        
        -->
    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>  
        <!-- ***** Preloader End ***** -->


        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky bg-warning">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">

                            <!-- ***** Logo Start ***** -->
                            <a href="index.jsp" class="logo">
                                <img src="assets/images/logo BotasJusaino.png" alt=""/>
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="index.jsp" class="active">Inicio</a></li>
                                <li class="scroll-to-section"><a href="#men">Hombres</a></li>
                                <li class="scroll-to-section"><a href="#women">Mujeres</a></li>
                                <li class="scroll-to-section"><a href="#kids">Niños</a></li>

                                <li class="submenu">
                                    <a href="javascript:;">Más</a>
                                    <ul>
                                        <li><a href="about.jsp">Conócenos</a></li>
                                        <li><a href="products.jsp">Productos</a></li>
                                        <!--<li><a href="single-product.html">Producto a Detalle</a></li>-->
                                        <li><a href="contact.jsp">Contáctanos</a></li>
                                        <li><a href="productRegister.jsp">Registrar producto</a></li>
                                    </ul>
                                </li>

                                <!--
                                <li class="submenu">
                                    <a href="javascript:;">Features</a>
                                    <ul>
                                        <li><a href="#">Features Page 1</a></li>
                                        <li><a href="#">Features Page 2</a></li>
                                        <li><a href="#">Features Page 3</a></li>
                                        <li><a rel="nofollow" href="https://templatemo.com/page/4" target="_blank">Template Page 4</a></li>
                                    </ul>
                                </li>
    
    
                                <li class="scroll-to-section"><a href="#explore">Explore</a></li>
    
                                -->
                                <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>

                                <li><a href="search.jsp"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <!-- ***** Main Banner Area Start ***** -->
        <div class="page-heading" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="inner-content">
                            <h2>Actualiza un usuario</h2>
                            <span>Actualiza los datos de un usuario en específico.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Main Banner Area End ***** -->


        <!-- ***** Products Area Starts ***** -->
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

    <main>
        <form action="/ProyectoAppWeb/SrvRegister" method="POST">
            <section class="product-form">
                <div class="product-details">
                    <input type="text" placeholder="APELLIDO PATERNO" name="apellidopaterno">
                    <input type="text" placeholder="APELLIDO MATERNO" name="apellidomaterno">
                    <input type="date" name="fechanacimiento">

                    <h6>GÉNERO</h6> 
                    <select name="genero">

                        <option value="">MASCULINO</option>
                        <option value="">FEMENINO</option>
                    </select>
                    <input type="text" placeholder="NOMBRE" name="nombre">
                    <input type="text" placeholder="TELÉFONO" name="phone">
                    <input type="text" placeholder="CORREO ELECTRÓNICO" name="textsend">
                    <input type="text" placeholder="CONTRASEÑA" name="password">
                    <input type="text" placeholder="ESTADO" name="estado">
                    <input type="text" placeholder="CIUDAD" name="ciudad">
                    <input type="text" placeholder="CÓDIGO POSTAL" name="codigopostal">
                    <input type="text" placeholder="COLONIA" name="colonia">
                    <input type="text" placeholder="CALLE" name="calle">
                    <input type="text" placeholder="NÚMERO DE RESIDENCIA" name="numero">
                    <button>GUARDAR</button>
                </div>

        </form>


    </div>
</section>
</main>
<!-- ***** Products Area Ends ***** -->

<!-- ***** Footer Start ***** -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="first-item">
                    <div class="logo">
                        <img src="assets/images/logoBaseBotasJusaino.jpg" alt=""/>
                    </div>
                    <ul>
                        <li><a href="#">Ciudad Obregón, Sonora, MX</a></li>
                        <li><a href="#">jusainobotas@hotmail.com</a></li>
                        <li><a href="#">644 279 7185</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <h4>Categorías de compras</h4>
                <ul>
                    <li><a href="#">Hombre</a></li>
                    <li><a href="#">Mujer</a></li>
                    <li><a href="#">Niño</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h4>Enlaces Útiles</h4>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="about.jsp">Conócenos</a></li>
                    <li><a href="contact.jsp">Contactanos</a></li>
                    <li><a href="search.jsp">Buscar producto</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h4>Ayuda e Informaciónn</h4>
                <ul>
                    <li><a href="#">Ayuda</a></li>

                    <!-- 
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Tracking ID</a></li>
                    -->
                </ul>
            </div>
            <div class="col-lg-12">
                <div class="under-footer">
                    <p>Copyright © 2024 Botas Jusaino Co., Ltd. All Rights Reserved. 


                        <!--
                        <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a></p>
                        -->
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>


<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/accordions.js"></script>
<script src="assets/js/datepicker.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script> 
<script src="assets/js/slick.js"></script> 
<script src="assets/js/lightbox.js"></script> 
<script src="assets/js/isotope.js"></script> 

<!-- Global Init -->
<script src="assets/js/custom.js"></script>

<script>

    $(function () {
        var selectedClass = "";
        $("p").click(function () {
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("." + selectedClass).fadeOut();
            setTimeout(function () {
                $("." + selectedClass).fadeIn();
                $("#portfolio").fadeTo(50, 1);
            }, 500);

        });
    });

</script>

</body>

</html>
