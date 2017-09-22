package com.briup.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.briup.bean.Category;
import com.briup.bean.CategoryDetail;
import com.briup.bean.PriceRank;
import com.briup.bean.Product;
import com.briup.bean.Publish;
import com.briup.service.ICategoryService;
import com.briup.service.IProductService;

@RequestMapping("ListProduct")
@Controller
public class ListProductController {

	@Autowired
	private IProductService productService;
	@Autowired
	private ICategoryService categoryService;
	
	@RequestMapping("listView")
	public String list(){
		return "list";
	}
	
	@RequestMapping("byCategory")
	public String listCategory(@RequestParam("categoryId") String id,@RequestParam(value="categorydetailId",required=false) String detailId,HttpSession session){
		List<Product> productbycategory_list=null;
		List<CategoryDetail> categoryDetail_list=null;
		if(detailId==null){
			productbycategory_list=productService.getProductByCategoryId(Long.parseLong(id));
			categoryDetail_list=categoryService.getCategoryDetail(Long.parseLong(id),-1);
		}else{
			productbycategory_list=productService.getProductByCategoryIdAndDetailId(Long.parseLong(id),Long.parseLong(detailId));
			categoryDetail_list=categoryService.getCategoryDetail(Long.parseLong(id),Long.parseLong(detailId));
		}
		List<PriceRank> priceRank_list=productService.getPriceRank();
		List<Publish> publish_list=productService.getPublish();
		session.setAttribute("productbycategory_list", productbycategory_list);
		session.setAttribute("priceRank_list", priceRank_list);
		session.setAttribute("publish_list", publish_list);
		session.setAttribute("categoryDetail_list", categoryDetail_list);
		//如果该类商品如空，则跳到空界面
		if(productbycategory_list.size()==0){
			return "redirect:/empty";
		}else{
			return "redirect:/ListProduct/listView";
		}
	}
	
}
