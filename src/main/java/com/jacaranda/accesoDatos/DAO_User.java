package com.jacaranda.accesoDatos;


import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAO_User {
private Connection conection;

public DAO_User() throws ClassNotFoundException {
	super();
	try {
		Class.forName("com.mysql.jdbc.Driver");

		conection = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/proyectoJSP?useSSL=false","dummy", "dummy");
		DatabaseMetaData infoBD= conection.getMetaData();
		System.out.println("Base de datos: " + infoBD.getDatabaseProductName());
		System.out.println("Version: " + infoBD.getDatabaseProductVersion());
		} catch (SQLException ex) {
		// Tratar el error
			ex.getMessage();
		}

}
public boolean validateUser(String user,String password) {
	boolean validate=false;
	int counter=0;
	try {
		Statement conect=this.conection.createStatement();
		String query="SELECT * FROM USER WHERE userName='"+user+"'AND password='"+password+"'";
		ResultSet r=conect.executeQuery(query);
		while (r.next()) {
			counter++;
		}
		if (counter==1) {
			validate=true;
		}
		return validate;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return validate;
}

}
