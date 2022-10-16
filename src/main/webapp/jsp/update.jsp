<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	<%
	HttpSession session23 = request.getSession();
	session23.setAttribute("id", Integer.parseInt(request.getParameter("id")));
	%>

	<form action="execUpdate.jsp">
		<p>¿Cómo quieres actualizar el producto?</p>

		
		Name: <input type="text" id="name" name="name"
			value="<%=p.getName()%>" required> <br> <br> Stock:
		<input type="number" id="stock" name="stock" value="<%=p.getStock()%>"
			required> <br> <br> Price: <input type="number"
			id="price" name="price" value="<%=p.getPrice()%>" required> <br>
		<br> Avaliable: <input type="number" min="0" max="1"
			id="avaliable" name="avaliable" value="<%=p.getAvaliable()%>"
			required> <br> <br> ArrivalDate: <input type="date"
			id="arrivalDate" name="arrivalDate" value="<%=p.getArrivalDate()%>"
			required> <br> <br> <input type="submit" id="boton"
			value="Update">
	</form>
	
	<a href="main.jsp">Cancelar</a>

</body>
</html>