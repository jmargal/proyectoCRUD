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
		Name: <input type="text" id="name" required> <br> <br>
		Stock: <input type="number" id="stock" required> <br> <br>
		Price: <input type="number" id="price" required> <br> <br>
		Avaliable: <input type="number" min="0" max="1" id="avaliable"
			required> <br> <br> ArrivalDate: <input type="date"
			id="arrivalDate" required> <br> <br> <input
			type="submit" id="boton" value="Update">
	</form>

	<%
	String name = request.getParameter("name");
	if (request.getParameter("stock") != null) {
		int stock = Integer.parseInt(request.getParameter("stock"));
	}
	if (request.getParameter("stock") != null) {
		double price = Double.parseDouble(request.getParameter("price"));
	}
	String avaliable = request.getParameter("avaliable");
	SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	if (request.getParameter("arrivalDate") != null) {
		java.util.Date util_StartDate = format.parse(request.getParameter("arrivalDate"));
		java.sql.Date arrivalDate = new java.sql.Date(util_StartDate.getTime());
	}
	%>
</body>
</html>