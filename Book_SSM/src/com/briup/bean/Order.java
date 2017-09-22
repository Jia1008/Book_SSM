package com.briup.bean;

import java.io.Serializable;
import java.util.Set;

/*
 * 订单
 */
public class Order implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	//生成的订单编号
	private String num;
	//订单生成的时间
	private String start_date;
	//所有产品的总价
	private double sum_price;
	//所在的订单项
	private long orderline_id;
	//支付方式
	private Payway payway;
	//订单的状态:1，待付款，2完成，3评价
	private String status;
	//订单所属的用户
	private User user;
	//接受人详细信息
	private Receiver receiver;
	private Set<OrderLine> orderlines;
	
	public Order(String num, String start_date, double sum_price,
			Payway payway, String status, User user, Receiver receiver) {
		super();
		this.num = num;
		this.start_date = start_date;
		this.sum_price = sum_price;
		this.payway = payway;
		this.status = status;
		this.user = user;
		this.receiver = receiver;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public double getSum_price() {
		return sum_price;
	}
	public void setSum_price(double sum_price) {
		this.sum_price = sum_price;
	}
	public Payway getPayway() {
		return payway;
	}
	public void setPayway(Payway payway) {
		this.payway = payway;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Receiver getReceiver() {
		return receiver;
	}
	public void setReceiver(Receiver receiver) {
		this.receiver = receiver;
	}
	public Set<OrderLine> getOrderlines() {
		return orderlines;
	}
	public void setOrderlines(Set<OrderLine> orderlines) {
		this.orderlines = orderlines;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public long getOrderline_id() {
		return orderline_id;
	}
	public void setOrderline_id(long orderline_id) {
		this.orderline_id = orderline_id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(String num, String start_date, double sum_price,
			long orderline_id, Payway payway, String status, User user,
			Receiver receiver) {
		super();
		this.num = num;
		this.start_date = start_date;
		this.sum_price = sum_price;
		this.orderline_id = orderline_id;
		this.payway = payway;
		this.status = status;
		this.user = user;
		this.receiver = receiver;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", num=" + num + ", start_date="
				+ start_date + ", sum_price=" + sum_price + ", payway="
				+ payway + ", status=" + status + ", user=" + user
				+ ", receiver=" + receiver + "]";
	}
	
}
