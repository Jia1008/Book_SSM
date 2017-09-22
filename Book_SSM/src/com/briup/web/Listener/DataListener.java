package com.briup.web.Listener;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.context.ServletContextAware;

import com.briup.bean.Category;
import com.briup.bean.Product;
import com.briup.entity.IndexBottom;
import com.briup.service.ICategoryService;
import com.briup.service.IProductService;

public class DataListener implements InitializingBean,ServletContextAware{

	@Resource
	private ICategoryService categoryService;
	@Resource
	private IProductService productService;
	
	@Override
	public void setServletContext(ServletContext application) {
		// TODO Auto-generated method stub
		List<Category> category_list=categoryService.getAllCategory();
		List<Product> hotProduct_list=productService.getHotProduct();
		List<IndexBottom> indexBottom_list=productService.getBottomProduct();
		System.out.println("数据："+hotProduct_list.size());
		application.setAttribute("category_list", category_list);
		application.setAttribute("hotProduct_list", hotProduct_list);
		application.setAttribute("indexBottom_list", indexBottom_list);
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
