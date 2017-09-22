package com.briup.bean;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component("shopCart")
public class ShopCart implements IShopCart {
	
	private Map<Long,OrderLine> orderlines= new HashMap<Long,OrderLine>();
	
	public void addProduct(Product product,long num) throws Exception{
		System.out.println("进入ShopCart的add()方法！");
		
		long number = num;
		long id = product.getId();
		
		if(orderlines.containsKey(id)) {
			OrderLine orderline = (OrderLine) orderlines.get(id);
			number = orderline.getAmount()+number;
			orderline.setAmount(number);
			orderline.setSingle_price(product.getPrice());
			System.out.println("hhhhhhhh"+orderlines.size());
		}else {
			OrderLine orderline = new OrderLine();
			orderline.setAmount(number);
			orderline.setProduct(product);
			orderlines.put(id, orderline);
			orderline.setSingle_price(product.getPrice());
			System.out.println("kkkkkkkk"+orderlines.size());
		}
//		System.out.println("total:"+orderlines.get(id).getAmount());
//		System.out.println("name:"+orderlines.get(id).getProduct().getName());
//		System.out.println("product:"+orderlines.get(id).toString());
	}

	public void removeProduct(Integer productid) throws Exception{
		System.out.println("进入ShopCart的removeProduct()方法！");
		//map集合移除订单项
		orderlines.remove(productid);
	}

	public void removeAllProducts() throws Exception{
		System.out.println("进入ShopCart的removeAllProducts()方法！");
		//把map集合全部清空
		orderlines.clear();
	}

	public void updateProduct(Integer productid, Integer number) throws Exception{
		System.out.println("进入ShopCart的updateProduct()方法！");
		OrderLine orderline = orderlines.get(productid);
		orderline.setAmount(number);
	}

	public BigDecimal getTotalPrice() throws Exception{
		System.out.println("进入ShopCart的getTotalPrice()方法！");
		BigDecimal totalPrice = new BigDecimal(0);
		Iterator<OrderLine> iter = getOrderlines();
		//判断下一个值是否有值iter.hasNext()
		while(iter.hasNext()) {
			//获取值
			OrderLine o = (OrderLine) iter.next();
			Product p = o.getProduct();
			BigDecimal sum = new BigDecimal(p.getPrice()*o.getAmount());
			totalPrice = totalPrice.add(sum);    
		}
		return totalPrice;
	}
	//获取迭代器，对map集合的遍历方式
	public Iterator<OrderLine> getOrderlines() throws Exception{
		System.out.println("进入ShopCart的getOrderlines()方法！");
		//orderlines.values()得到所有的value值--》Set集合
		return orderlines.values().iterator();
	}

	public ShopCart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
