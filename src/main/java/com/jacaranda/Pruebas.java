package com.jacaranda;

import java.sql.SQLException;

import com.jacaranda.accesoDatos.*;


public class Pruebas {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

		DAO_User d = new DAO_User();
		System.out.println(d.validateUser("javi", "javi"));
		
		DAO_Product dp= new DAO_Product();
		System.out.println(dp.getDataBase().toString());

		dp.findProduct(4);
	}

}
