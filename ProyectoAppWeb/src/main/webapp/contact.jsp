<%-- 
    Document   : contact
    Created on : 28 abr 2024, 5:39:35 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Página de Contacto</title>


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
                        <a href="index.html" class="logo">
                            <img src="assets/images/logo BotasJusaino.png" alt=""/>
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">Inicio</a></li>
                            <li class="scroll-to-section"><a href="#men">Hombres</a></li>
                            <li class="scroll-to-section"><a href="#women">Mujeres</a></li>
                            <li class="scroll-to-section"><a href="#kids">Niños</a></li>
                            
                            <li class="submenu">
                                <a href="javascript:;">Más</a>
                                <ul>
                                    <li><a href="about.html">Conócenos</a></li>
                                    <li><a href="products.html">Productos</a></li>
                                    <!--<li><a href="single-product.html">Producto a Detalle</a></li>-->
                                    <li><a href="contact.html">Contáctanos</a></li>
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
                            
                            <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
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
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="page-heading about-page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Contacta con nosotros</h2>
                        <span>Conoce la forma de contactarnos de forma directa o por nuestras redes sociales. </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Contact Area Starts ***** -->
    <div class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div id="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3539.8576090002425!2d-109.9507718!3d27.473692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86c815e58d530443%3A0xc642a7c899a063aa!2sBOTAS%20JUSAINO!5e0!3m2!1ses-419!2smx!4v1710822570030!5m2!1ses-419!2smx" width="550" height="700" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                      <!-- You can simply copy and paste "Embed a map" code from Google Maps for any location. -->
                      
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>¡Mándanos un correo electrónico!</h2>
                        <span>Rellena el formulario para establecer contacto directo.</span>
                    </div>
                    <form id="contact" action="" method="post">
                        <div class="row">
                          <div class="col-lg-6">
                            <fieldset>
                              <input name="name" type="text" id="name" placeholder="Tu nombre" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-6">
                            <fieldset>
                              <input name="email" type="text" id="email" placeholder="Tu correo electrónico" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-12">
                            <fieldset>
                              <textarea name="message" rows="6" id="message" placeholder="Tu mensaje" required=""></textarea>
                            </fieldset>
                          </div>
                          <div class="col-lg-12">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                          </div>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Contact Area Ends ***** -->

    <!-- ***** Subscribe Area Starts ***** -->

    
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <h2>Suscríbete para recibir noticias sobre la tienda y ofertas disponibles.</h2>
                        <span>Ingresa tu correo electrónico para notificarte sobre lo más nuevo referente a Botas Jusaino.</span>
                    </div>
                    <form id="subscribe" action="" method="get">
                        <div class="row">
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="name" type="text" id="name" placeholder="Tu nombre" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Tu correo electrónico" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-2">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                            </fieldset>
                          </div>
                        </div>
                    </form>
                </div>

                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-6">
                            <ul>
                                <li>Dirección de la tienda:<br><span>BOULEVARD RAMIREZ 503 COL. CONSTITUCION 85170 Ciudad Obregón, Sonora, Mexico</span></li>
                                <li>Teléfono:<br><span>644 279 7185</span></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul>
                                <li>Horario laboral:<br><span>09:00 AM - 7:30 PM. Todos los días.</span></li>
                                <li>Correo electrónico:<br><span>jusainobotas@hotmail.com</span></li>
                                <li>Redes sociales:<br><span><a href="https://www.facebook.com/botasjusaino.19/">Facebook</a>, <a href="https://www.tiktok.com/@botas.jusaino3">TikTok</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Subscribe Area Ends ***** -->

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
                            <li><a href="#">010-020-0340</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <h4>Categorias de compras</h4>
                    <ul>
                        <li><a href="#">Hombre</a></li>
                        <li><a href="#">Mujer</a></li>
                        <li><a href="#">Niño</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Enlaces Útiles</h4>
                    <ul>
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Conócenos</a></li>
                        <li><a href="#">Ayuda</a></li>
                        <li><a href="#">Contactanos</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Ayuda e Informaciónn</h4>
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
