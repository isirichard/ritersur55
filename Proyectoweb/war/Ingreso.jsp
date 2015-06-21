<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
       
        <title>RITERSUR</title>
        
        <link rel="stylesheet" type="text/css" href="Ingreso.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<script src="js/jquery.min.js"></script>

		<style>
			@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);
			body {
				background: #563c55 url(images/back.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
		</style>
		<script>
			$(document).ready(function(){
    			$("#admin").click(function(){
        			$(".main").slideDown();
    			});
			});
</script>
    </head>
    <body>
        <div class="container">
			<div id="encabezado"><br><br>
				<h1>Bienvenido a RITESUR</h1>
				<div id="botones">
				 <input id="admin" type="submit"  value="Administrador">
				 <form action="index.jsp">
				 	<input type="submit" name="submit" value="Visitante">
				 </form>
				 </div>
			</div>
			<div class="main" style="display:none">
				<form action="/registroController" class="form-3" >
				 
				  <div id="all"  >
				    <p class="clearfix">
				        <label for="login">Username</label>
				        <input type="text" name="login" id="login" placeholder="Username">
				    </p>
				    <p class="clearfix">
				        <label for="password">Password</label>
				        <input type="password" name="password" id="password" placeholder="Password"> 
				    </p>
				    <p class="clearfix">
				        <input type="checkbox" name="remember" id="remember">
				        <label for="remember">Remember me</label>
				    </p>
				    <p class="clearfix">
				        <input type="submit" name="submit" value="Sign in">
				    </p>   
				    </div>    
				</form>
				<form action="/gmailController" class="form-3">
					<p class="clearfix">
					<input type="submit" value="Ya tengo cuenta">
					</p> 
				</form>​
			</div>
			
        </div>
    </body>
</html>