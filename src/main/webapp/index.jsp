<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iniciar Sesión</title>
<link rel="stylesheet" href="index.css">
<link rel="icon" href="https://images.vexels.com/media/users/3/200097/isolated/preview/942820836246f08c2d6be20a45a84139-icono-de-carrito-de-compras-carrito-de-compras.png" type="image/x-icon">
</head>
<body>
<%session.invalidate(); %>
<div id="cuerpo">
	<form action="login.jsp" method="get" id="formulario">
		<p id="login">HIPER BRENES</p>
		<div id="soloUsuario">
			Usuario<br>
			<input type="text" required id="usuario" name="usuario">
		</div>
		<br><br>
		<div id="soloContrasena">
			Contraseña<br>
			<input type="password" required id="contasena" name="contrasena">
		</div>
		<input type="submit" value="Iniciar Sesión" id="boton">
	</form>
</div>
</body>
</html>