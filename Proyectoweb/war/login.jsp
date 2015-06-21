<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">
   
    <link rel="stylesheet" href="login.css" type="text/css" >
   
     
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
	<script src="js/script.js" type="text/javascript"></script>
    <script src="js/bgSlider.js" type="text/javascript"></script>
 
<!--Slider-in icons-->

</head>
<body >
	<div id="bgSlider"></div>
    
	
        <!--==============================Encabezado=================================-->
      
        	<div class="Menu-top">
            	<div class="main">
                	<div class="Relleno">
                        <h1><a href="index.jsp">RITERSUR</a></h1>
                        <ul class="pagination">
                            <li class="current"><a href="images/f1.jpg">1</a></li>
                            <li><a href="images/f2.jpg">2</a></li>
                            <li><a href="images/f3.jpg">3</a></li>
                        </ul>
                        <strong class="top-text">Background:</strong>
                    </div>
                </div>
            </div>
            <div class="menu-barra">
            	<div class="menu-borde">
                	<div class="main">
                        
                            <ul class="menu">
                                <li><a href="index.jsp">Inicio</a></li>
                                <li><a class="active" href="login.jsp">LogIn</a></li>
                                <li><a href="inventario.jsp">Inventario</a></li>
                                <li><a href="servicio.jsp">Servicios</a></li>
                                <li><a href="galeria.jsp">Galeria</a></li>
                                <li class="last"><a href="#">Contactenos</a></li>
                            </ul>
                        
                    </div>
                </div>
            </div>
			
       
        <!--==============================contenido modificable================================-->
        <div class="main-c">
            <div id="contenido">
                <!--======== Aqui pueden colocar contenido==================-->
            	<div id="form">
            		<div id="form-izq">
            			<div id="wrapper">
							
							<form name="login-form" class="login-form" action="/save" method="post">
								
							    <div class="header">
    							<h1>Login Form</h1><br>
							    </div>
    							
    							<div class="content"><br>
									Nombre(s):<input name="username" type="text" class="input username" value="Username" onfocus="this.value=''" /><br>
									Apellido(s): <input name="lastname" type="text" class="input lastname" value="Lastname" onfocus="this.value=''" /><br>
									Dni : <input name="dni" type="text" class="input direccion" value="direccion" onfocus="this.value=''" /><br>
									Telefono/mobil: <input name="celular" type="text" class="input cel" value="NumTel" onfocus="this.value=''" /><br>
    								Contraseña:<input name="password" type="password" class="input password" value="Password" onfocus="this.value=''" />
    							</div>
    							
								
    							<div class="pie">
    								<input type="submit" name="submit" value="Registrar" class="button" />
    							</div>
							</form>
						</div>
					</div>
            	<!--=============== Ingreso ====================-->
            		<div id="form-der">
            		<div class="indent-left">
                        	<h2 class="indent-bot2">Ingresar</h2>
                            <div class="indent-bot">
                                <div class="img-border1">
                                    <img src="images/icon.png" alt="icono"/>
                                </div>
                                <div class="clear"></div>
                            </div>
                              <div id="text-contac">
                                <div class="form-ing">
                        			
                          			<form id="form-ing" method="post" action="LoginController">
                            	 		 Usuario: <input name="username" type="text" class="input username" value="Username" onfocus="this.value=''" />
                            	 		 Password: <input name="password" type="password" class="input password" value="Password" onfocus="this.value=''" />
                             			 <button class="ing_button">INGRESAR</button>
                            		</form>
                        		</div>
                            </div>
                        </div>
            		</div>
            	
            	</div>    
      	</div>
    </div>
    <script type="text/javascript">
		$(window).load(function() {
			$('.slider')._TMS({
				duration:1000,
				easing:'easeOutQuart',
				preset:'simpleFade',
				slideshow:10000,
				banners:'fade',
				pauseOnHover:true,
				waitBannerAnimation:false,
				pagination:'.pags'
			});
		});
    </script>
</body>
</html>
