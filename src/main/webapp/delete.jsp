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
</head>
<body style="background-color: #8196FF;">


	<p style="color: white; padding-left: 25%; ">
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
	<a href="execDelete.jsp?id=<%=p.getCode()%>" style="padding-left: 25%;">
		<button style="background-color: #163BF1;color: white;">Sí, BORRAR</button>
	</a>
	<br>
	<br>
	<a href="main.jsp" style="padding-left: 25%;">
		<button style="background-color: #163BF1;color: white;">Volver</button>
	</a>




</body>
</html>