<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@page import="com.jacaranda.logica.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="update.css">
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
		Name: <input type="text" id="name" name="name" required> <br><br>
		Stock: <input type="number" id="stock" name="stock" required> <br><br>
		Price: <input type="number" id="price" name="price" required> <br><br>
		Avaliable: <input type="number" min="0" max="1" id="avaliable" name="avaliable" required> <br><br>
		ArrivalDate: <input type="date" id="arrivalDate" name="arrivalDate" required> <br><br>
		<input type="submit" id="boton" value="Update">
	</form>
	
	<%
	int stock=0;
	String name="",avaliable="";
	double price=0.0;
	Date arrivalDate=new Date();
	
	if (request.getParameter("name") != null){
		name = request.getParameter("name");
	}
	if (request.getParameter("stock") != null){
		stock = Integer.parseInt(request.getParameter("stock"));
	}
	if (request.getParameter("price") != null){
		price = Double.parseDouble(request.getParameter("price"));
	}
	if (request.getParameter("avaliable") != null){
		avaliable = request.getParameter("avaliable");
	}
	SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	if (request.getParameter("arrivalDate") != null){
		arrivalDate=format.parse(request.getParameter("dat"));
	}
	
	Product p2 = new Product (p.getCode(),name,stock,price,avaliable,arrivalDate);
	
	d.updateProduct(p2);
	
	%>
	
</body>
</html>