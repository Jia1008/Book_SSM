package com.briup.dao;

import java.util.List;

import com.briup.bean.PriceRank;
import com.briup.bean.Product;
import com.briup.bean.Publish;
import com.briup.entity.IndexBottom;

public interface IProductDao {
	List<Product> findHotProduct();
	List<IndexBottom> findBottomProduct();
	List<Product> findProductByCategoryId(long id);
	//获取有大类id和小类id得到的商品
	List<Product> findProductByCategoryIdAndDetailId(long id,long detailId);
	//获取价格区间
	public List<PriceRank> findPriceRank();
	//获取出版社
	public List<Publish> findPublish();
	//获取商品详细信息
	public Product findProductByID(long id);
}
