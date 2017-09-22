package com.briup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.Product;
import com.briup.dao.IAjaxDao;

@Service("ajaxService")
public class IAjaxServiceImpl implements IAjaxService{

	@Autowired
	private IAjaxDao ajaxDao;
	
	@Override
	public List<Product> getpriceRankAjax(long id, long min, long max) {
		List<Product> list=null;
		try {
			synchronized (ajaxDao) {
				list=ajaxDao.findPriceRankAjax(id, min, max);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Product> getPublishAjax(long pid, long did) {
		List<Product> list=null;
		try {
			synchronized (ajaxDao) {
				list=ajaxDao.findPublishAjax(pid, did);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Product> getOrderAjax(long id,String method) {
		List<Product> list=null;
		try {
			synchronized (ajaxDao) {
				list=ajaxDao.findOrderAjax(id,method);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
