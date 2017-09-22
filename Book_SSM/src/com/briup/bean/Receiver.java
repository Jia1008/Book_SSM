package com.briup.bean;

import java.io.Serializable;
import java.util.Set;

/*
 * 收件人
 */
public class Receiver implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	//收件人名字
	private String name;
	//收件人地址
	private String address;
	//收件人电话号码
	private String phone;
	//订单
	private Set<Order> orders;
	//用户
	private User user;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Receiver() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Receiver(String name, String address, String phone) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	public Receiver(long id, String name, String address, String phone,
			User user) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.user = user;
	}
	public Receiver(String name, String address, String phone, User user) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.user = user;
	}
	
	
}
