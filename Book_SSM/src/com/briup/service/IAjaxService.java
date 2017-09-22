package com.briup.service;

import java.util.List;

import com.briup.bean.Product;

public interface IAjaxService {
	public List<Product> getpriceRankAjax(long id,long min,long max);
	public List<Product> getPublishAjax(long pid,long did);
	public List<Product> getOrderAjax(long id,String method);
}
