package com.briup.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.briup.bean.Product;
import com.briup.service.IAjaxService;

@RequestMapping("ajax")
@Controller
public class AjaxController {

	@Autowired
	private IAjaxService ajaxService;
	
	@RequestMapping("priceRank")
	public String priceRank(String categoryId,String price_min,String price_max,HttpSession session){
		System.out.println(categoryId+"  "+price_min+"   "+price_max);
		List<Product> ajaxProduct_list=ajaxService.getpriceRankAjax(Long.parseLong(categoryId), Long.parseLong(price_min), Long.parseLong(price_max));
		session.setAttribute("ajaxProduct_list", ajaxProduct_list);
		return "ajax";
	}
	
	@RequestMapping("publish")
	public String publish(String categoryId,String publishId,HttpSession session){
		System.out.println(categoryId+"  "+publishId);
		List<Product> ajaxProduct_list=ajaxService.getPublishAjax(Long.parseLong(categoryId), Long.parseLong(publishId));
		session.setAttribute("ajaxProduct_list", ajaxProduct_list);
		System.out.println(ajaxProduct_list.size()+"kkkkkkkkkkkkkkk");
		return "ajax";
	}
	
	@RequestMapping("order")
	public String order(String categoryId,String method,HttpSession session){
		System.out.println(categoryId+"  "+method);
		List<Product> ajaxProduct_list=ajaxService.getOrderAjax(Long.parseLong(categoryId),method);
		session.setAttribute("ajaxProduct_list", ajaxProduct_list);
		return "ajax";
	}
	
	
}
