<%@page import="com.jacaranda.accesoDatos.DAO_Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExecDelete</title>
</head>
<body>

	<%
	
		int id = Integer.parseInt(request.getParameter("id"));
		DAO_Product d = new DAO_Product();
		if(d.delProduct(id)){
			out.write("Borrado con éxito");
		}
	
	
	
	%>

</body>
</html>