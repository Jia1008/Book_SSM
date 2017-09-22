package com.briup.entity;

import java.io.Serializable;

public class IndexBottom implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String title;
	private String explain;
	public IndexBottom() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public IndexBottom(int id, String name, String title, String explain) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.explain = explain;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	@Override
	public String toString() {
		return "IndexBottom [id=" + id + ", name=" + name + ", title=" + title
				+ ", explain=" + explain + "]";
	}


	
	
}
