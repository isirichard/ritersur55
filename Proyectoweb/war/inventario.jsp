<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    	<title>Inventario</title>
   			<link rel="stylesheet" href="inventario.css" type="text/css">
   			<link rel="stylesheet" href="style.css" type="text/css">
    		<script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
			<script src="js/script.js" type="text/javascript"></script>
    		<script src="js/bgSlider.js" type="text/javascript"></script>
		
	</head>
	<body >
		<div id="bgSlider"></div>
	
        <!--==============================Encabezado=================================-->
      
        	<div class="Menu-top">
        		<div class="social">
					<ul>
						<li><a href="http://www.facebook.com/" target="_blank" class="icon-facebook">Facebook</a></li>
						<li><a href="http://www.twitter.com/" target="_blank" class="icon-twitter">Twitter...</a></li>
						<li><a href="http://www.googleplus.com/" target="_blank" class="icon-googleplus">Google+...</a></li>
						<li><a href="http://www.pinterest.com/" target="_blank" class="icon-pinterest">Pinterest</a></li>
						<li><a href="http://gmail.com/" target="_blank"class="icon-mail">....Gmail...</a></li>
					</ul>
				</div>

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
                                <li><a href="login.jsp">LogIn</a></li>
                                <li><a class="active" href="inventario.jsp">Inventario</a></li>
                                <li><a href="servicio.jsp">Servicios</a></li>
                                <li><a href="galeria.jsp">Galeria</a></li>
                                <li class="last"><a href="contactenos.jsp">Contactenos</a></li>
                            </ul>
                        
                    </div>
                </div>
            </div>
			
       
        <!--==============================contenido modificable================================-->
        <div class="main-c">
            <div id="contenido">
				<p style="margin:auto 60px;">Elija la categoria del producto que busca: </p><br>
				<!-- ===================================================== -->
				<div class="contenedor">
    				<input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
    				<label for="tab-1" class="tab-label-1">Tanques</label>
	    
    				<input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
    				<label for="tab-2" class="tab-label-2">Llaves</label>
    
					<input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" />
    				<label for="tab-3" class="tab-label-3">Tubos</label>
    
				    <input id="tab-4" type="radio" name="radio-set" class="tab-selector-4" />
    				<label for="tab-4" class="tab-label-4">Tapas</label>
    				
    				<input id="tab-5" type="radio" name="radio-set" class="tab-selector-5" />
    				<label for="tab-5" class="tab-label-5">Cinta</label>
    				
    				<input id="tab-6" type="radio" name="radio-set" class="tab-selector-6" />
    				<label for="tab-6" class="tab-label-6">Pegamento</label>
    				<div class="content">
    					<div class="content-1">
            				...Variedades de tanques...
        				</div>
        				<div class="content-2">
            			 	...Variedades de llaves...
        				</div>
        				<div class="content-3">
            				...Variedades de tubos...
        				</div>
        				<div class="content-4">
            				...Variedades de tapas...
        				</div>
        				<div class="content-5">
            				...Variedades de cinta...
        				</div>
        				<div class="content-6">
            				...Variedades de pegamento...
        				</div>
     				</div>
     				</div>
     				<div class="contenedor">
    				<input id="tab-7" type="radio" name="radio-set" class="tab-selector-7" />
    				<label for="tab-7" class="tab-label-7">Manometros</label>
    				
    		        <input id="tab-8" type="radio" name="radio-set" class="tab-selector-8" />
    				<label for="tab-8" class="tab-label-8">Valvulas</label>
                            
                    <input id="tab-9" type="radio" name="radio-set" class="tab-selector-9" />
    				<label for="tab-9" class="tab-label-9">Codos</label>
    				
    				<input id="tab-10" type="radio" name="radio-set" class="tab-selector-10" />
    				<label for="tab-10" class="tab-label-10">Niples</label>        
    				<div class="content">
        				
        				<div class="content-7">
            				...Variedades de manometros...
        				</div>
        				<div class="content-8">
            				...Variedades de valvulas...
        				</div>
        				<div class="content-9">
            				...Variedades de codos...
        				</div>
        				<div class="content-10">
            				...Variedades de Niples...
        				</div>
    				</div>
				</div><br>
                <!--======== Aqui pueden colocar contenido==================-->
                <form class="formulariodemo" action="">
 					 <input type="text" value="Ingresar texto..." onfocus="this.value=''" >
  					 <button type="submit">buscar</button>
  					 
				</form>
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
