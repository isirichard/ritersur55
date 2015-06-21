
	<!--
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	form {
		width: 800px;
		margin: auto;
		background: white;
	}
	button,a,form #derechaRes{
		float: right;
	}
	#titulo{

	background: white;
	width: 600px;
	margin:0 auto 0 350px;
	align:center;
	}
</style>
<title>Insertando productos</title>
	<meta charset="utf-8">
   
    <link rel="stylesheet" href="style.css" type="text/css" >
	<script src="../js/jssor.js" type="text/javascript" ></script>
    <script src="../js/jssor.slider.js" type="text/javascript" ></script>
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
	<script src="js/script.js" type="text/javascript"></script>
    <script src="js/bgSlider.js" type="text/javascript"></script>
</head>
<body>
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
                                <li><a href="#">Inventario</a></li>
                                <li><a href="#">Servicios</a></li>
                                <li><a href="#">Galeria</a></li>
                                <li class="last"><a href="#">Contactenos</a></li>
                            </ul>
                        
                    </div>
                </div>
            </div>
			
    <!--==============================Moficación=================================-->
	<center><h1 id="titulo">Registro de Productos Terma</h1></center>
	<br><br><br><br>
	
	<form action="/saveTerma">
		<fieldset>	<br><br>
		<input type="text" value="Terma" name="nombre" size="7"><br>
			Tanque
			<select name="tanque">
			   <option value="enBlanco"></option>
			   <option value="lac">Lac</option>
			   <option value="galvanizado">Galvanizado</option>
			   <option value="inox">Inox</option>
			 </select><br>
			 Color
			<select name="color">
			   <option value="plomo">Plomo</option>
			   <option value="rojo">Rojo</option>
			   <option value="mate">Mate</option>
			   <option value="amarillo">Amarillo</option>
			 </select><br>
			 Lts
			<select name="lts">
			   <option value="80">80</option>
			   <option value="120">120</option>
			   <option value="180">180</option>
			   <option value="240">240</option>
			 </select><br>
			 Capacidad
			<select name="capacidad">
			   <option value="simple">simple</option>
			   <option value="duplex">duplex</option>
			 </select><br>
			 Colector Solar: <br>
			 Cantidad
			 <input type="text" name="cantidadCajas" size="3"><br>
			 Tipo de Caja
			<select name="tipoCaja"><br>
			   <option value="aluminio">Aluminio</option>
			   <option value="inoxidable">Inoxidable</option>
			   <option value="galvanizado">Galvanizado</option>
			 </select><br>
			 Numeros de Tubos
			 <input type="text" name="numeroTubos" size="3"><br>
			 Tamaño del Tubo
			 <select name="tamanoTubo"><br>
			   <option value="1">3/4x1/2</option>
			   <option value="2">7/8x5/8</option>
			 </select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="terma" >Registrar</button><br><br>
	 	</fieldset>	
	 </form>
	 
</body>
</html>