<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contactenos</title>
    <meta charset="utf-8">
   

    <link rel="stylesheet" href="contactenos.css" type="text/css" >
   
     
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
	<script src="js/script.js" type="text/javascript"></script>
    <script src="js/bgSlider.js" type="text/javascript"></script>

	
	
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
                                <li><a href="login.jsp">LogIn</a></li>
                                <li><a href="inventario.jsp">Inventario</a></li>
                                <li><a href="servicio.jsp">Servicios</a></li>
                                <li><a href="galeria.jsp">Galeria</a></li>
                                <li class="last"><a class="active" href="contactenos.jsp">Contactenos</a></li>
                            </ul>
                        
                    </div>
                </div>
            </div>
			
       
        <!--==============================contenido modificable================================-->
        <div class="main-c">
            <div id="contenido">
	<!--  -->
                <!--======== Aqui pueden colocar contenido==================-->
                <div class="col1">
							
							<form id="ContactForm">
							<br><h2>Contactanos</h2><br>
								<div>
									<div  class="wrapper">
										<span>Nombre:</span>
										<input type="text" class="input" >
										<img src="images/li.png" alt=""/><img src="images/ty.png" alt=""/><img src="images/us.png" alt=""/><img src="images/jk.png" alt=""/>
									</div>
									<div  class="wrapper">
										<span> E-mail:</span>
										<input type="text" class="input" >								
									</div>
									<div>
										<span>Curriculum: </span>
										<label><input type='file' name='archivo'></label>
									</div><br>
									<div  class="textarea_box">
										<span>Dejanos un mensaje:</span>
										<textarea name="textarea" cols="1" rows="1"></textarea>								
									</div>
									
									<a href="#" class="button" onClick="document.getElementById('ContactForm').submit()"><strong>Send</strong></a>
									<a href="#" class="button" onClick="document.getElementById('ContactForm').reset()"><strong>Clear</strong></a>
								</div>
							</form>
				</div>
           	</div>

        </div>
      

</body>
</html>
