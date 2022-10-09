<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@ page import="com.jacaranda.logica.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<link rel="stylesheet" href="deleteStyle.css">
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	String login = (String) sesion.getAttribute("isLogin");
	String user = (String) sesion.getAttribute("usuario");

	// Si viene desde el login los atributos tienen valor y entra
	if (login != null && user != null && login.equals("True")) {
	%>
	<%
	//Le invalido la sesión para que solo pueda entrar desde el login
	session.invalidate();
	//Creo una nueva sesión para hacer lo mismo con los otros archivos y solo entren desde el main
	HttpSession session2 = request.getSession();
	session2.setAttribute("isLogin", "True");
	session2.setAttribute("usuario", login);
	} else {
	response.sendRedirect("errorLogin.html");
	}
	%>

	<p>
		<%
		Product p;
		DAO_Product d = new DAO_Product();
		p = d.findProduct(Integer.parseInt(request.getParameter("id")));
		%>
		¿Desea borrar el producto
		<%
		out.write(p.toString());
		%>
		?
	</p>
	<a href="execDelete.jsp?id=<%=p.getCode()%>">
		<button>Sí, BORRAR</button>
	</a>
	<br>
	<br>
	<a href="main.jsp">
		<button>Volver</button>
	</a>




</body>
</html>