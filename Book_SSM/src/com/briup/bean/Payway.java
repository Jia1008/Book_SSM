package com.briup.bean;
/*
 * 支付方式
 */

import java.io.Serializable;
import java.util.Set;

public class Payway implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	//支付方式的名字
	private String pay_style;
	//支付方式的图片
	private String images;
	//订单
	private Set<Order> orders;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getPay_style() {
		return pay_style;
	}
	public void setPay_style(String pay_style) {
		this.pay_style = pay_style;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public Payway() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Payway(long id, String pay_style, String images) {
		super();
		this.id = id;
		this.pay_style = pay_style;
		this.images = images;
	}
	@Override
	public String toString() {
		return "Payway [id=" + id + ", pay_style=" + pay_style + ", images="
				+ images + "]";
	}
	
	
}
