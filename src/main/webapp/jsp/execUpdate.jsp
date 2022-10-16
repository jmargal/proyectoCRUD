<%@page import="com.jacaranda.logica.Product"%>

<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExecUpdate</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	out.print(sesion.getAttribute("id"));
	DAO_Product d1 = new DAO_Product();
	SimpleDateFormat format = new SimpleDateFormat("dd-mm-yyyy");
	Date dat = format.parse(request.getParameter("arrivalDate"));
	Product aux=new Product((Integer)sesion.getAttribute("id"),request.getParameter("name"),Integer.valueOf(request.getParameter("stock")),Double.valueOf(request.getParameter("price")),request.getParameter("avaliable"),dat);
	d1.updateProduct(aux);
	response.sendRedirect("main.jsp");
	%>

</body>
</html>