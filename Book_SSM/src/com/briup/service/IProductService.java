package com.briup.service;

import java.util.List;

import com.briup.bean.OrderLine;
import com.briup.bean.PriceRank;
import com.briup.bean.Product;
import com.briup.bean.Publish;
import com.briup.entity.IndexBottom;

public interface IProductService {
	//获取热卖商品
	public List<Product> getHotProduct();
	//获取首页底部数据展示
	public List<IndexBottom> getBottomProduct();
	//通过大类的id获取该大类的所有商品
	public List<Product> getProductByCategoryId(long id);
	//通过大类和小类的id获取该小类细分的商品
	public List<Product> getProductByCategoryIdAndDetailId(long id,long detailId);
	//获取价格区间
	public List<PriceRank> getPriceRank();
	//获取出版社信息
	public List<Publish> getPublish();
	//获取商品详细信息
	public Product getDetailProduct(long id);
}
