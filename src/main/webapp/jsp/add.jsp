<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.*"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="java.util.Date"%>
<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #8196FF;">
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
	<h1 style="color: white;">Artículo añadido con exito</h1>
	<%
	int stock = 0;
	String name = "", avaiable = "";
	double price = 0.0;
	Date dat = new Date();

	if (request.getParameter("nom") != null) {
		name = request.getParameter("nom");
	}
	if (request.getParameter("pre") != null) {
		price = Double.parseDouble(request.getParameter("pre"));
	}
	if (request.getParameter("disp") != null) {
		avaiable = request.getParameter("disp");
	}
	if (request.getParameter("sto") != null) {
		stock = Integer.parseInt(request.getParameter("sto"));
	}
	if (request.getParameter("dat") != null) {
		SimpleDateFormat format = new SimpleDateFormat("dd-mm-yyyy");
		dat = format.parse(request.getParameter("dat"));

	}
	Product p = new Product(name, stock, price, avaiable, dat);
	DAO_Product d = new DAO_Product();
	d.addProduct(p);
	%>
	<a href="main.jsp">
		<button>Volver</button>
	</a>
</body>
</html>