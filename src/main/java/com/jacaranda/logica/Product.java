package com.jacaranda.logica;

import java.util.Date;
import java.util.Objects;

public class Product {

	private int code;
	private String name;
	private int stock;
	private double price;
	private String avaliable;
	private Date arrivalDate;

	public Product(int code, String name, int stock, double price, String avaliable, Date arrivalDate) {
		super();
		this.code = code;
		this.name = name;
		this.stock = stock;
		this.price = price;
		this.avaliable = avaliable;
		this.arrivalDate = arrivalDate;
	}

	public int getCode() {
		return code;
	}

	public String getName() {
		return name;
	}

	public int getStock() {
		return stock;
	}

	public double getPrice() {
		return price;
	}

	public boolean isAvaliable() {
		boolean resul = false;
		if (avaliable.equals("1")) {
			resul = true;
		}
		return resul;
	}

	public String getAvaliable() {
		return avaliable;
	}

	public String getArrivalDate() {
		return arrivalDate.toString();
	}

	@Override
	public int hashCode() {
		return Objects.hash(code);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return code == other.code;
	}

	@Override
	public String toString() {
		return "Product code=" + code + ", name=" + name + ", stock=" + stock + ", price=" + price + ", avaliable="
				+ avaliable + ", arrivalDate=" + arrivalDate;
	}

}
