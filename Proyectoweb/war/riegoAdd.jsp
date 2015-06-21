
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
	<center><h1 id="titulo">Registro de Productos</h1></center>
	<br><br><br><br>
	
	<form action="/saveRiego">
		<fieldset>	
		<input type="text" value="Adex" name="nombre" size="7">
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Aspersores" name="nombre" size="7">
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="aspersores" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Basurero" name="nombre" size="7">
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="206x600x3">206x600x3/16</option>
			 </select>
			Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="3'">3'</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="lac">lac</option>
	 		</select>
	 		
			 <br>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="basurero" >Registrar</button>
	 	</fieldset>		
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="BombaDeAguaHp" name="nombre" size="7">
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="bombaAgua" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Bridas" name="nombre" size="7"> 
			
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="3galv">3 Galvanizada</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Cinta" name="nombre" size="7">  
			
			Cantidad Unidades
	 		<input type="text" name="cantidad" value="" size="6">
	 		Cantidad Paquetes
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="rodrip">Rodrip</option>
			   <option value="rodripgoteo">Rodrip goteo a 20 3800</option>
			   <option value="teflon">Teflon</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Codos" name="nombre" size="7"> 
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="inyectados">Inyectados</option>
			   <option value="preFabricados">Pre-Fabricados</option>
			   <option value="inyectados">clase 7.5</option>
			   <option value="giratorios">giratorios</option>
			   <option value="giratorios">IPS</option>
			   <option value="2x2ConRosca">ConRosca</option>

	 		</select>
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="110x90">110x90</option>
			   <option value="110x45">110x45</option>
			   <option value="90x90">90x90</option>
			   <option value="90x45">90x45</option>
			   <option value="63x90">63x90</option>
			   <option value="63x45">63x45</option>
			   <option value="63">63</option>
			   <option value="63x50">63x50 s/p</option>
			   <option value="2x2">2x2</option>
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="1p">1'</option>
			   <option value="2p">2'</option>
			   <option value="3p">3'</option>
			   <option value="3/4p">3/4'</option>
	 		</select><br>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="galvanizado">Galvanizado</option>
			   <option value="pvc">Pvc</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Collarines" name="nombre" size="7">
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="90a">90a3/4</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Conector" name="nombre" size="7">  
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="Codo">Codo</option>
			   <option value="cruceta">Cruceta</option>
			   <option value="t">T</option>
			   <option value="inicial">inicial</option>
			   <option value="manguera">manguera a cinta</option>
			   <option value="manguera">cinta + cinta</option>
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="16mm">16mm</option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Curvas" name="nombre" size="7"> 
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="preFabricados">Pre-fabricados</option>
			   <option value="c7.5">c-7.5</option>
	 		</select>
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="110x90">110x90</option>
			   <option value="110x45">110x45</option>
			   <option value="90x90">90x90</option>
			   <option value="90x45">90x45</option>
			   <option value="63x90">63x90</option>
			   <option value="63x45">63x45</option>
			   <option value="50x50">50x50</option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Elevadores" name="nombre" size="7"> 
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Enlaces" name="nombre" size="7"> 
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="3/4x16mm">3/4x16mm</option>
			   <option value="3/4x20mm">3/4x20mm</option>
			   <option value="1/6x16mm">1/6x16mm</option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="EquipoDeFiltrado" name="nombre" size="7">  
			Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Estacas" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="palitos">Palitos o fierro 400mm</option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="FiltrosDeMalla" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo" >
			   <option value="enBlanco"></option>
			   <option value="Y">Y</option>
			   <option value="mellizo">mellizo</option>
			   <option value="mellizoCon">mellizo+accesorio</option>
	 		</select>
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="110x110">110x110</option>   
			   <option value="90x90">90x90</option>
			   <option value="63x63">63x63</option>
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
	 		</select>
	 	
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Grabas" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="1/2">1/2</option>
			   <option value="3/8">3/8</option>
			   <option value="1/8">1/8</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Llaves" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="bola">De Bola</option>
			   <option value="bola">Sanking</option>
	 		</select>
			Espesor
	 		<select name="espesor">
	 		   <option value="enBlanco"></option>
			   <option value="1p">1'</option>
			   <option value="2p">2'</option>
			   <option value="3p">3'</option>
			   <option value="3/4p">3/4'</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="bronceCrane">Bronce crane</option>
			   <option value="pvc">pvc</option>
			   <option value="competencia">competencia</option>
	 		</select>
	 		<br>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Lubricante" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Manguera" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="16mm">16mm</option>
			   <option value="20mm">20mm</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Manifol" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
	 		</select>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text"  value="ManometrosListerine" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Niples" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="cachito">cachito</option>
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="2p">2'</option>
			   <option value="1px2p">1'x2'</option>
			   <option value="1px4p">1'x4'</option>
			   <option value="1px6p">1'x6'</option>
			   <option value="2px2p">2'x2'</option>
			   <option value="2px3p">2'x3'</option>
			   <option value="2px6p">2'x6'</option>
			   <option value="3px3p">3'x3'</option>
			   <option value="3px6p">3'x6'</option>
			   <option value="3/4px1p">3/4'x1'</option>
			   <option value="3/4px2p">3/4'x2'</option>
			   <option value="3/4px3p">3/4'x3'</option>
			   <option value="3/4px4p">3/4'x4'</option>
			   <option value="3/4px8p">3/4'x8'</option>
			   <option value="3/4px1p1/2">3/4'x11/2'</option>
			   <option value="4px3p">4'x3'</option>
			   <option value="4px6p">4'x6'</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="Galvanizado">Galvanizado</option>
			   <option value="Pvc">Pvc</option>
	 		</select>
	 		<br>

	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Palanca" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Pegamento" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="1/8">1/8 OATE</option>
			   <option value="1/4">1/4 OATE</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="PuntoDePresion" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>	
		<input type="text" value="Reduccion" nname="nombre" size="7">
	 		Cantida
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="bushing">Bushing</option>
			   <option value="normal">Normal</option>
			   <option value="espiga">Espiga</option>
			   <option value="7.5">clase 7.5</option>
			   <option value="UPR">UPR 90x3/option>
	 		</select>
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="200x160">200x160</option>
			   <option value="110x90">110x90</option>
			   <option value="4x90">4x90</option>
			   <option value="2x90n">2x90 Normal</option>
			   <option value="3x100n">3x100 Normal</option>
			   <option value="2x90e">2x90 Espiga</option>
			   <option value="3x100e">3x100 Espiga</option>
			   <option value="2x3">2x3 c/R. C. c/R</option>
			   <option value="3x4">3x4 c/R. C. c/R</option>
			   <option value="3x">3x c/R. Cx 2c/Hm</option>
			   <option value="1x">1xR/A Cx1/2 R/A</option>
			   <option value="3/4a">3/4a1/4</option>
			   <option value="1x3/4">1x3/4</option>
	 		</select>
	 		<br>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Sacos" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="gravaFina">grava fina</option>
			   <option value="gravaGruesa">grava gruesa</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
		 <fieldset>
		<input type="text" value="TanqueGrava" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="0.50x1.10x3/16">0.50x1.10x3/16</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="lac">lac</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Tapones" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="110D">110 Directo en pegamento</option>
			   <option value="90">90</option>
			   <option value="63">63</option>
			   <option value="taponh2p">Tapon hembra 2'</option>
			   <option value="taponh3p">Tapon hembra 3'</option>
			   <option value="taponm2p">Tapon 2'</option>
			   <option value="taponm3p">Tapon 3'</option>
			   <option value="taponm2pcr">Tapon 2 C/R'</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Tapa" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="2">2 con rosca</option>
			   <option value="3">3</option>
			   <option value="4">4</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Tee" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="4x4x4i">4x4x4 inyectada</option>
			   <option value="inyectado">inyectado</option>
			   <option value="c/R">c/R</option>
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="1p">1'</option>
			   <option value="2p">2'</option>
			   <option value="3p">3'</option>
			   <option value="3/4p">3/4'</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="pvc">pvc</option>
			   <option value="competencia">competencia</option>
	 		</select><br>
	 		Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="110">110</option>
			   <option value="90x90">90x90</option>
			   <option value="50x90">50x90</option>
			   <option value="90">90</option>
			   <option value="110x90x110">110x90x110</option>
			   <option value="90x63x90">90x63x90</option>
			   <option value="2x90x2">2x90x2</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Toberas" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="importadas">importadas</option>
			   <option value="nacionales">nacionales</option>
			   <option value="imitacion">imitación</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="lac">lac</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Tubos" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="clase5">clase 5</option>
			   <option value="clase5a">clase 5 con anillo</option>
			   <option value="nicoll">Nicoll</option>
			   <option value="nicollc5">Nicoll c-5</option>
			   <option value="7.5">clase 7.5</option>
			   <option value="aluminio">aluminio</option>
	 		</select>
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="200">200mm</option>
			   <option value="160">160</option>
			   <option value="110c5">110xc5</option>
			   <option value="110">110</option>
			   <option value="110x90">110x90</option>
			   <option value="110x45">110x45</option>
			   <option value="63">63</option>
			   <option value="63x">63x0.5</option>
			   <option value="90">90</option>
			   <option value="90xc5">90xc5</option>
			   <option value="4p">4'</option>
			   <option value="2p">2'</option>
			   
	 		</select>
	 		Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="10">10c</option>
			   <option value="7.5">7.5</option>
			   <option value="5">5</option>
			   
	 		</select>
	 		<br>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="UnionUniversal" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="blancas">blancas</option>
			   <option value="1/2IPS">1/2 IPS</option>
			</select>
			Espesor
	 		<select name="espesor">
			   <option value="enBlanco"></option>
			   <option value="1p">1'</option>
			   <option value="2p">2'</option>
			   <option value="3p">3'</option>
			   <option value="3/4p">3/4'</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="pvc">pvc</option>
			   <option value="galvanizado">galvanizado</option>
	 		</select>
	 		<br>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="UPR" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="preFabricadas">Prefab-Normal</option>
			   <option value="rosca2">ConRosca2 c5</option>
			   <option value="rosca7.5">ConRosca2 c7.5</option>
			   <option value="espiga">Campana</option>
	 		</select>
			Medida
			<select name="medida">
			   <option value="enBlanco"></option>
			   <option value="110x4">110x4</option>
			   <option value="110x3">110x3</option>
			   <option value="110x2">110x2</option>
			   <option value="90x3">100x4</option>
			   <option value="90x3">90x3</option>
			   <option value="90x2">90x2</option>
			   <option value="63x2">63x2</option>
			   <option value="63">63</option>
			   <option value="4x3">4x3</option>
			   <option value="2x2">2x2</option>
			   <option value="2xdesague">2xdesague</option>
	 		</select>
	 		Material
	 		<select name="material">
			   <option value="enBlanco"></option>
			   <option value="pvc">pvc</option>
			   <option value="espiga">Espiga</option>
			   <option value="espiga">Campana</option>
	 		</select>
	 		<br>
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="Valvula" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
			Tipo
	 		<select name="tipo">
			   <option value="enBlanco"></option>
			   <option value="compuesta">compuesta</option>
			   <option value="compuerta">compuerta</option>
			   <option value="deAire">de aire</option>
			   <option value="ranak">Ranak mtc verde</option>
			   <option value="mariposa8">Mariposa completo de 8''</option>
			   <option value="mariposa6">Mariposa completo de 6''</option>
			   <option value="2san">2' sanquin</option>
			   <option value="2san">3/4 chek</option>
			   <option value="3p">3'k</option>
	 		</select>
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 	</fieldset>	
	 </form>
	 
	 
	 <form action="/saveRiego">
	 	<fieldset>
		<input type="text" value="VenturiAccesorios" name="nombre" size="7">
	 		Cantidad
	 		<input type="text" name="cantidad" value="" size="6">
	 		
	 		<a href="">Ver Registro</a>
	 		<input type="reset" value="Reestablecer" id="derechaRes">
	 		<button name="save" value="adex" >Registrar</button>
	 		<br>
	 	</fieldset>
	 </form>
</body>
</html>