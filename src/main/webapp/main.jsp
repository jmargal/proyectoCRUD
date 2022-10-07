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
<title>Main</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	String login = (String) sesion.getAttribute("isLogin");
	String user = (String) sesion.getAttribute("usuario");

	// Si viene desde el login los atributos tienen valor y entra
	if (login != null && user != null && login.equals("True")) {
		out.println("Hola " + user);
		//Le invalido la sesión para que solo pueda entrar desde el login
		session.invalidate();
	} else {
		response.sendRedirect("errorLogin.html");
	}
	%>
	<form action="main.jsp" method="get">
		<div id="body">
			<a href="add.jsp" <%%>>Add product</a>
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