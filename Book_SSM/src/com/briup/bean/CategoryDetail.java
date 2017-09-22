package com.briup.bean;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

/*
 *书种类的细化
 */
public class CategoryDetail  implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	//所属的种类
	private Category category;
	//书籍细化的名字
	private String name;
	//产品
	private List<Product> products;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public CategoryDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryDetail(long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public CategoryDetail(long id, Category category, String name,
			List<Product> products) {
		super();
		this.id = id;
		this.category = category;
		this.name = name;
		this.products = products;
	}
	@Override
	public String toString() {
		return "CategoryDetail [id=" + id + ", category=" + category
				+ ", name=" + name + ", products=" + products + "]";
	}
	
	
	
}
