<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.*"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="productCSS.css">
<title>Main</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	String login = (String) sesion.getAttribute("isLogin");
	String user = (String) sesion.getAttribute("usuario");

	// Si viene desde el login los atributos tienen valor y entra
	if (login != null && user != null && login.equals("True")) {
	%>
	<p id="usuarioHola">
		<%
		out.println("Hola " + user);
		%>
	</p>
	<%
	//Le invalido la sesi�n para que solo pueda entrar desde el login
	session.invalidate();
	//Creo una nueva sesi�n para hacer lo mismo con los otros archivos y solo entren desde el main
	HttpSession session2 = request.getSession();
	session2.setAttribute("isLogin", "True");
	session2.setAttribute("usuario", login);
	} else {
	response.sendRedirect("errorLogin.html");
	}
	%>
	<form action="main.jsp" method="get">
		<div id="body">
			<a href="add.html" <%%>>Add product</a> <a href="index.jsp"
				id="cerrarSesion">Cerrar Sesi�n</a>
			<table id="tabla" border="1">
				<tr>
					<td>Code</td>
					<td>Name</td>
					<td>Price</td>
					<td>Avaliable</td>
					<td>Stock</td>
					<td>Arrival Date</td>
					<td>Buttons</td>
				</tr>

				<%
				DAO_Product d = new DAO_Product();
				ArrayList<Product> lista = d.getDataBase();
				for (Product p : lista) {
				%>
				<tr>
					<td><%=p.getCode()%></td>
					<td><%=p.getName()%></td>
					<td><%=p.getPrice()%>$</td>
					<td><%=p.getAvaliable()%></td>
					<td><%=p.getStock()%></td>

					<td><%=p.getArrivalDate().toString()%></td>
					<td><a href="delete.jsp?id=<%=p.getCode()%>">Delete</a> <a
						href="update.jsp?id=<%=p.getCode()%>">Update</a></td>
				<tr>

					<%
					}
					%>
				
			</table>


		</div>
	</form>
</body>
</html>