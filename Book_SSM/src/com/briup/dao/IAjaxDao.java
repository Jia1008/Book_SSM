package com.briup.dao;

import java.util.List;

import com.briup.bean.Product;

public interface IAjaxDao {
	List<Product> findPriceRankAjax(long id,long min,long max);
	List<Product> findPublishAjax(long pid,long did);
	List<Product> findOrderAjax(long id,String method);
}
