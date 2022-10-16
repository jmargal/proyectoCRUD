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
	String user = request.getParameter("usuario");
	String password = request.getParameter("contrasena");

	DAO_User d = new DAO_User();
	if (!d.validateUser(user, password)) {
		response.sendRedirect("../html/errorLogin.html");
	}
	else{
		HttpSession sesion = request.getSession();
		//Le coloco un atributo True llamado isLogin y uno usuario
		//donde está el nombre del usuario
		sesion.setAttribute("isLogin", "True");
		sesion.setAttribute("usuario", user);
		response.sendRedirect("main.jsp");
	}
	
	%>


</body>
</html>
