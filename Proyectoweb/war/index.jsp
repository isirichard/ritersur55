<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>RITERSUR</title>
    <meta charset="utf-8">
   
    <link rel="stylesheet" href="style.css" type="text/css" >
   
    <script src="../js/jssor.js" type="text/javascript" ></script>
    <script src="../js/jssor.slider.js" type="text/javascript" ></script>
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
	<script src="js/script.js" type="text/javascript"></script>
    <script src="js/bgSlider.js" type="text/javascript"></script>
</head>
<body >
<script>
        jssor_slider1_starter = function (containerId) {
            var options = {
                $DragOrientation: 3,                                
                $ArrowNavigatorOptions: {                       
                    $Class: $JssorArrowNavigator$,              
                    $ChanceToShow: 2,                               
                    $AutoCenter: 0,                                 
                    $Steps: 1                                       
                }
            };

            var jssor_slider1 = new $JssorSlider$(containerId, options);
        };
    </script>
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
                                <li><a class="active" href="index.jsp">Inicio</a></li>
                                <li><a href="login.jsp">LogIn</a></li>
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
                <!--============================== Slider=========================-->
               <div id="contenido1">
                 <div id="slider1_container" >
                 	<div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px;
            			overflow: hidden;">
            		            			<div ><img u="image" src="images/rpg.jpg" /></div>
            			<div><img u="image" src="images/ts.jpg" /></div>
	          			<div><img u="image" src="images/gerente.jpg" /></div>
            			<div><img u="image" src="images/Don.jpg" /></div>
            			<div><img u="image" src="images/term.jpg" /></div>
            			<div><img u="image" src="images/tienda.jpg" /></div>
            			<div><img u="image" src="images/maj.jpg" /></div>
        			</div>
        			
				    <span u="arrowleft" class="jssora03l" ></span>
        			<span u="arrowright" class="jssora03r" ></span>
          			<script>
       				     jssor_slider1_starter('slider1_container');
        			</script>
    			</div>
    			<div id="derecha">
    				
    				<p><em >RITERSUR</em>,es una empresa dedicada a multiples servicios. 
    				Ofrecemos servicio personalizado de produccion de termas solares,atencion directa con nuestro gerente. 
    				Se hace asesoramiento e instalación de proyecto para riego por goteo en la agricultura desde pozos, 
    				con bombas y tanques para acumulación para la irrigación. 
    				Fabricación y reparación de termas solares. 120 litros 180litros y 240litros. Acero inox. Galvanizado y lac. Panel galvanizado.</p>
    			
    			</div>
            </div>
            <div id="contenido2">
            	<h3>Nuestros proximos Proyectos</h3>
            	
            	<div id="izquierda">
            		<img id="hotel" src="images/hot.jpg" alt="hotel"/>
            		<h2>Hotel</h2>
					<p>Proximamente tendremos un servicio de hospedaje en el centro de la ciudad de Arequipa.</p>
            	</div>
            	<div id="medio">
            		<img id="em" src="images/em.jpg" alt="esructuras metalicas"/><br>
            		<h2>Estructuras Metalicas</h2>
            	</div>
           </div>
          </div>
       </div>
   	  
    
</body>
</html>
