<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registrar</title>
</head>
<body>
	<center>
	<h2>Registrar </h2>
	<form action="/save" method="post">
		Nuevo Usuario: <input type="text" name="username"><br>
		DNI: 		   <input type="text" name="dni"><br>
		Password :	   <input type="password" name="password"> <BR>
		
		<br>
		<input type="submit" value="Registrar">
		<br>
		</form>
		<a href="login.jsp"><button>ATRAS</button></a>
		<br>
	</center>
</body>
</html>