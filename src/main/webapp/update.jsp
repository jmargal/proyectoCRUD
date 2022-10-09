<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.logica.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<% 
	Product p;
	DAO_Product d = new DAO_Product();
	p = d.findProduct(Integer.parseInt(request.getParameter("id")));
	%>
	¿Desea actualizar este producto
	<% 
	out.write(p.toString());
	%>
	?
	
	<form action="updateHecho.jsp">
		<p>¿Cómo quieres actualizar el producto?</p>
		Name: <input type="text" id="name" required> <br><br>
		Stock: <input type="number" id="stock" required> <br><br>
		Price: <input type="number" id="price" required> <br><br>
		Avaliable: <input type="number" min="0" max="1" id="avaliable" required> <br><br>
		ArrivalDate: <input type="date" id="arrivalDate" required> <br><br>
		<input type="submit" id="boton" value="Update">
	</form>
	
	<%
	String name = request.getParameter("name"); 
	if (request.getParameter("stock") != null){
		int stock = Integer.parseInt(request.getParameter("stock"));
	}
	if (request.getParameter("stock") != null){
		double price = Double.parseDouble(request.getParameter("price"));
	}
	String avaliable = request.getParameter("avaliable");
	SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	if (request.getParameter("arrivalDate") != null){
		java.util.Date util_StartDate = format.parse(request.getParameter("arrivalDate"));
		java.sql.Date arrivalDate = new java.sql.Date(util_StartDate.getTime());
	}
	%>
</body>
</html>