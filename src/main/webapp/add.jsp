<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.jacaranda.*" %>
   <%@ page import="com.jacaranda.logica.*"%>
   <%@ page import="java.util.Date"%>
   <%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
	<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Artículo añadido con exito</h1>
	<%
	int stock=0;
	String name="",avaiable="";
	double price=0.0;
	Date dat=new Date();

	if (request.getParameter("nom")!=null){
		name=request.getParameter("nom");
	}
	if (request.getParameter("pre")!=null){
		price=Double.parseDouble(request.getParameter("pre"));
	}
	if (request.getParameter("disp")!=null){
		avaiable=request.getParameter("disp");	
	}
	if (request.getParameter("sto")!=null){
		stock=Integer.parseInt(request.getParameter("sto"));
	}
	if (request.getParameter("dat")!=null){
		SimpleDateFormat format=new SimpleDateFormat("dd-mm-yyyy");
		dat=format.parse(request.getParameter("dat"));
		
	}
	Product p=new Product(name,stock,price,avaiable,dat);
	DAO_Product d=new DAO_Product();
	d.addProduct(p);
	%>
	
</body>
</html>