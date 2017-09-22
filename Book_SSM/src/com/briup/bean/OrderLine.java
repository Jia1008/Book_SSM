package com.briup.bean;

import java.io.Serializable;

//订单项
public class OrderLine implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	//购买产品的数量
	private long amount;
	//一类产品的总价
	private double single_price;
	//产品
	private Product product;
	//属于的订单
	private Order order;
	//产品的版本
	private int product_version;
	//所属用户id
	private long user_id;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public double getSingle_price() {
		return single_price;
	}
	public void setSingle_price(double single_price) {
		this.single_price = single_price;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public int getProduct_version() {
		return product_version;
	}
	public void setProduct_version(int product_version) {
		this.product_version = product_version;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public OrderLine() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderLine(long amount, Product product, long user_id) {
		super();
		this.amount = amount;
		this.product = product;
		this.user_id = user_id;
	}
	
	
	@Override
	public String toString() {
		return "OrderLine [amount=" + amount + ", single_price=" + single_price
				+ ", product_version=" + product_version + "]";
	}
	public OrderLine(long id, long amount, double single_price,
			Product product, int product_version, long user_id) {
		super();
		this.id = id;
		this.amount = amount;
		this.single_price = single_price;
		this.product = product;
		this.product_version = product_version;
		this.user_id = user_id;
	}
	public OrderLine(Product product, long user_id) {
		super();
		this.product = product;
		this.user_id = user_id;
	}
	
	
}
