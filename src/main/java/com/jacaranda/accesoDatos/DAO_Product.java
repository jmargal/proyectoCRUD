package com.jacaranda.accesoDatos;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import com.jacaranda.logica.Product;

public class DAO_Product {

	private Connection conexion;

	public DAO_Product() throws ClassNotFoundException {
		super();

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectoJSP?useSSL=false", "dummy",
					"dummy");
			DatabaseMetaData infoBD = conexion.getMetaData();
			System.out.println("Base de datos: " + infoBD.getDatabaseProductName());
			System.out.println("Version: " + infoBD.getDatabaseProductVersion());
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}

	}

	public boolean addProduct(Product p) throws SQLException {
		boolean resul = false;
		Statement insert = (Statement) conexion.createStatement();
		String cadena = "INSERT INTO PRODUCT VALUES('" + p.getCode() + "','" + p.getName() + "','" + p.getStock()
				+ "','" + p.getPrice() + "','" + p.getAvaliable() + "','" + p.getArrivalDate() + "');";
		if (insert.executeUpdate(cadena) != 0) {
			resul = true;
		}
		return resul;

	}

	public boolean delProduct(int id) throws SQLException {
		boolean resul = false;
		Statement insert = (Statement) conexion.createStatement();
		String cadena = "DELETE FROM PRODUCT WHERE CODPRODUCT='" + id + "';";
		if (insert.executeUpdate(cadena) != 0) {
			resul = true;
		}
		return resul;
	}

	/**
	 * 
	 * @param Product
	 * @return
	 * Devuelve true si ha podido realizar el cambio y exception si se quiere actualizar algo que no es posible
	 * @throws SQLException
	 */
	public boolean updateProduct(Product p) throws SQLException {
		boolean resul = true;
		Statement insert = (Statement) conexion.createStatement();
		//Se crea un objeto Product igual al que nos pasan
		Product aux = findProduct(p.getCode());
		String cadena = "UPDATE PRODUCT SET ";
		boolean coma = false;
		//La coma est� a falsa al empezar, si cambiar un campo se pondr� a true
		//y a partir de ah� a�ade comas
		if (!p.getName().equals(aux.getName())) {
			cadena = cadena + "name='" + p.getName() + "'";
			coma = true;
		}
		//En cada apartado comparo si ha cambiado el que hay en la
		// base de datos y si cambia a�ade a la sentencia
		if (p.getStock() != aux.getStock()) {
			if (coma) {
				cadena += ",";
			}
			cadena = cadena + "stock='" + p.getStock() + "'";
			coma = true;
		}
		if (p.getPrice() != aux.getPrice()) {
			if (coma) {
				cadena += ",";
			}
			cadena = cadena + "price='" + p.getPrice() + "'";
			coma = true;
		}
		if (!p.getAvaliable().equals(aux.getAvaliable())) {
			if (coma) {
				cadena += ",";
			}
			cadena = cadena + "disponibility='" + p.getAvaliable() + "'";
			coma = true;
		}
		
		cadena+= "WHERE codProduct='"+p.getCode()+"';";
		
		System.out.println(cadena);
		if(insert.executeUpdate(cadena)==0) {
			resul=false;
		}
		return resul;

	}

	public Product findProduct(int code) throws SQLException {
		Product result = null;
		Statement insert = (Statement) conexion.createStatement();
		String cadena = "SELECT * FROM PRODUCT WHERE CODPRODUCT='" + code + "';";
		ResultSet r = insert.executeQuery(cadena);
		while (r.next()) {
			result = new Product(r.getInt("codProduct"), r.getString("name"), r.getInt("stock"), r.getDouble("price"),
					r.getString("disponibility"), r.getDate("dateArrival"));
		}
		return result;
	}
	public ArrayList<Product> getDataBase(){
//		ArrayList<Product> collection=new ArrayList<Product>();
//		Statement connect=this.conexion.createStatement();
//		String query="SELECT * FROM PRODUCT";
//		ResultSet r=connect.executeQuery(query);
//		while (r.next()) {
//			collection.push(r);
//		}
		return null;
	}
}
