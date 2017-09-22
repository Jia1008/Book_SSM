package com.briup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Category;
import com.briup.bean.CategoryDetail;
import com.briup.dao.ICategoryDao;

@Service("categoryService")
public class ICategoryServiceImpl implements ICategoryService{

	@Autowired
	private ICategoryDao categoryDao;
	
	//获取所有大类
	@Override
	public List<Category> getAllCategory(){
		// TODO Auto-generated method stub
		List<Category> list=null;
		try {
			list=categoryDao.findAllCatogory();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<CategoryDetail> getCategoryDetail(long id,long detailId) {
		List<CategoryDetail> list=null;
		try {
			list=categoryDao.findDetailCatogory(id,detailId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


}
