package com.jacaranda;

import com.jacaranda.accesoDatos.*;

public class Pruebas {

	public static void main(String[] args) throws ClassNotFoundException {
		// TODO Auto-generated method stub

		DAO_User d = new DAO_User();
		System.out.println(d.validateUser("javi", "javi"));

	}

}
