<%-- 
    Document   : search
    Created on : 29 abr 2024, 00:30:53
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>


<%
    
    // Obtener el objeto HttpServletRequest
    HttpServletRequest requestObj = (HttpServletRequest) pageContext.getRequest();
    
    // Obtener la sesión
    HttpSession sessionObj = requestObj.getSession();
    
    // Obtener información del usuario logueado
    String username = (String) sessionObj.getAttribute("nombreUsuario"); // Suponiendo que guardas el nombre de usuario en la sesión
    
    String userType = (String) sessionObj.getAttribute("tipo_usuario");

    

%>
<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Botas Jusaino - Búsqueda</title>


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
                            <% if ("ENCARGADO".equals(userType)) { %>
                            <li class="scroll-to-section"><a href="dashboard.jsp">Admin Dashboard</a></li>
                            <% } %>
                            
                            <li class="submenu">
                                <a href="javascript:;">Más</a>
                                <ul>
                                    <li><a href="about.jsp">Conócenos</a></li>
                                    <li><a href="products.jsp">Productos</a></li>
                                    <!--<li><a href="single-product.html">Producto a Detalle</a></li>-->
                                    <li><a href="contact.jsp">Contáctanos</a></li>
                                    
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
                        <h2>Buscar Producto</h2>
                        <span>Busca un producto por su nombre y se te mostrarán los resultados que coincidan con la búsqueda.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->


    <!-- ***** Products Area Starts ***** -->
    <div class="search-container">
        <input type="text" class="search-box" placeholder="Buscar...">
        <button class="search-button">Buscar</button>
    </div>
    <div class="results-container">
        <h2>Resultados de la búsqueda:</h2>
        <br>
        <br>
        <br>

    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/botas01.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <h4>Botas para hombre</h4>
                            <span>$500.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/botas02.jpg" alt="" >
                        </div>
                        <div class="down-content">
                            <h4>Botas de baile para hombre</h4>
                            <span>$550.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/botas03.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <h4>Botas de baile para hombre</h4>
                            <span>$650.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/botas05.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <h4>Botas para mujer</h4>
                            <span>$500.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/cinto01.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <h4>Cinturón para hombre</h4>
                            <span>$250.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/funda01.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <h4>Funda para navaja</h4>
                            <span>$150.00</span>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li class="active">
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
                    <h4>Ayuda e Información</h4>
                    <ul>
                        <li><a href="#">Ayuda</a></li>
                        <li><a href="#">Preguntas Frecuentes</a></li>

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

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>

  </body>

</html>
