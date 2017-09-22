package com.briup.bean;

import java.io.Serializable;
import java.util.Set;

/*
 * 出版社
 */
public class Publish  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	//出版社的名字
	private String name;
	private Set<Product> products;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public Publish() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Publish(long id, String name, Set<Product> products) {
		super();
		this.id = id;
		this.name = name;
		this.products = products;
	}
	public Publish(long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	@Override
	public String toString() {
		return "Publish [id=" + id + ", name=" + name + ", products="
				+ products + "]";
	}
	
}
