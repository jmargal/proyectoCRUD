<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.accesoDatos.DAO_User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Perfil</title>
</head>
<body>


	<%
	String login = request.getParameter("usuario");
	String password = request.getParameter("contrasena");

	
	DAO_User d = new DAO_User();
	if (!d.validateUser(login, password)) {
		response.sendRedirect("errorLogin.html");
	}
	
	%>


</body>
</html>
