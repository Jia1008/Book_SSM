package com.briup.dao;

import java.util.List;

import com.briup.bean.Category;
import com.briup.bean.CategoryDetail;

public interface ICategoryDao {
	List<Category> findAllCatogory();
	List<CategoryDetail> findDetailCatogory(long id,long detailId);
}
