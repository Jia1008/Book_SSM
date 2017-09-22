package com.briup.web.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.briup.bean.OrderLine;
import com.briup.bean.Product;
import com.briup.bean.ShopCart;
import com.briup.service.IProductService;

@RequestMapping("shopCar")
@Controller
public class ShopCarController {
	List<OrderLine> orderLine_list=new ArrayList<OrderLine>();
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private ShopCart shopCart;
	
	@RequestMapping("ShopCart")
	public String shopC(){
		return "shopCart";
	}
	
	@RequestMapping("add")
	public String shopCar(String goodsid,String num,HttpSession session){
		System.out.println("goodsid="+goodsid+" num="+num);
		Product p=productService.getDetailProduct(Long.parseLong(goodsid));
		try {
	    	shopCart.addProduct(p,Long.parseLong(num));
	    	Iterator<OrderLine> orderLines=shopCart.getOrderlines();
	    	while(orderLines.hasNext()){
	    		orderLine_list.add(orderLines.next());
	    	}
	    	session.setAttribute("orderLine_list", orderLine_list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/shopCar/ShopCart";
	}
}
