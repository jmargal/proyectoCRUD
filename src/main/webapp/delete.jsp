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
<body>


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