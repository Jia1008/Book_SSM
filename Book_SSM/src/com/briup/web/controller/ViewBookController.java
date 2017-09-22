package com.briup.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.briup.bean.Product;
import com.briup.service.IProductService;

@RequestMapping("ViewBook")
@Controller
public class ViewBookController {

	@Autowired
	private IProductService productService;
	
	@RequestMapping("viewbook")
	public String list(){
		return "ViewBook";
	}
	
	@RequestMapping("detailView")
	public String detailView(String productId,HttpSession session){
		System.out.println(productId);
		Product product_vb=productService.getDetailProduct(Long.parseLong(productId));
		session.setAttribute("product_vb", product_vb);
		return "redirect:/ViewBook/viewbook";
	}
}
