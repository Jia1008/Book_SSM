package com.briup.bean;
/*
 * 书籍种类
 */

import java.io.Serializable;
import java.util.Set;

public class Category  implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	private String name;
	private Set<CategoryDetail> cate_detail;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<CategoryDetail> getCate_detail() {
		return cate_detail;
	}
	public void setCate_detail(Set<CategoryDetail> cate_detail) {
		this.cate_detail = cate_detail;
	}
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Category(long id, String name, Set<CategoryDetail> cate_detail) {
		super();
		this.id = id;
		this.name = name;
		this.cate_detail = cate_detail;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", cate_detail="
				+ cate_detail + "]";
	}
	
}
