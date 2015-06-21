<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="epis.*" %>
<%@page import="java.util.*"%>

<% 
	List<Terma> terma = (List<Terma>)request.getAttribute("terma");
	String tanque = (String)request.getAttribute("tanque");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="estiloRiegoShow.css"/>
<meta charset="utf-8">
   
<link rel="stylesheet" href="style.css" type="text/css" >

<script src="../js/jssor.js" type="text/javascript" ></script>
<script src="../js/jssor.slider.js" type="text/javascript" ></script>
<script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
<script src="js/bgSlider.js" type="text/javascript"></script>
<title>Insert title here</title>
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
                        <h1><a href="index.html">RITERSUR</a></h1>
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
			
       
        <!--==============================contenido modificable================================-->
  	<% 
	HttpSession misesion= request.getSession();
	misesion.getAttribute("tanque");
	String nombre2=(String)misesion.getAttribute("tanque");
	%>
	<div id="fondo">
	<ul class="navbar">
	  <li><a href="/termaAdd.jsp">Nuevo</a><br>
	  <li><a href="/actualizarLista2?cargar=<%=nombre2%>">Actualizar Lista</a>
	</ul>


	<div class="Table">
		<div class="Title"><p>Lista de los Registrados del tanque:<%= tanque %></p></div>
		<div class="Heading">
			<div class="Cell"><p>Tanque</p></div>
			<div class="Cell"><p>Color</p></div>
			<div class="Cell"><p>Litros</p></div>
			<div class="Cell"><p>Capacidad</p></div>
			<div class="Cell"><p>CantidadCajas</p></div>
			<div class="Cell"><p>NumeroTubos</p></div>
			<div class="Cell"><p>tipoCaja</p></div>
			<div class="Cell"><p>tamanoTubo</p></div>
			
		</div>

	<%for (int idx = 0; idx < terma.size(); idx++) {
		Terma t = (Terma)terma.get(idx);%>
		<div class="Row">
			<div class="Cell"><p><%= t.getTanque() %></p></div>
			<div class="Cell"><p><%= t.getColor() %></p></div>
			<div class="Cell"><p><%= t.getLts() %></p></div>
			<div class="Cell"><p><%= t.getCapacidad() %></p></div>
			<div class="Cell"><p><%= t.getCantidadCajas() %></p></div>
			<div class="Cell"><p><%= t.getNumeroTubos() %></p></div>
			<div class="Cell"><p><%= t.getTipoCaja() %></p></div>
			<div class="Cell"><p><%= t.getTamanoTubo() %></p></div>
		</div>
	<%}%>

	</div>
	</div>
</body>
</html>