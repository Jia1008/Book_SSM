package com.briup.service;

import java.util.List;


import com.briup.bean.Category;
import com.briup.bean.CategoryDetail;


public interface ICategoryService {
	//获取所有大类
	public List<Category> getAllCategory();
	//获取detailCategory
	public List<CategoryDetail> getCategoryDetail(long id,long detailId);
}
