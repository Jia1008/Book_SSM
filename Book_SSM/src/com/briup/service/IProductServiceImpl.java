package com.briup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.OrderLine;
import com.briup.bean.PriceRank;
import com.briup.bean.Product;
import com.briup.bean.Publish;
import com.briup.dao.IProductDao;
import com.briup.entity.IndexBottom;

@Service("productService")
public class IProductServiceImpl implements IProductService{

	@Autowired
	private IProductDao productDao;
	
	@Override
	public List<Product> getHotProduct() {
		List<Product> list=null;
		try {
			list=productDao.findHotProduct();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<IndexBottom> getBottomProduct() {
		List<IndexBottom> list=null;
		try{
			list=productDao.findBottomProduct();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Product> getProductByCategoryId(long id) {
		List<Product> list=null;
		try {
			list=productDao.findProductByCategoryId(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Product> getProductByCategoryIdAndDetailId(long id, long detailId) {
		List<Product> list=null;
		try {
			list=productDao.findProductByCategoryIdAndDetailId(id,detailId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<PriceRank> getPriceRank() {
		List<PriceRank> list=null;
		try {
			list=productDao.findPriceRank();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Publish> getPublish() {
		List<Publish> list=null;
		try {
			list=productDao.findPublish();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	//获取详细的product
	@Override
	public Product getDetailProduct(long id) {
		Product product=null;
		try {
			product=productDao.findProductByID(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return product;
	}

}
