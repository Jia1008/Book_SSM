package com.briup.service;

import com.briup.bean.User;

public interface IUserService {
	
	public void register(User user)throws Exception;
	public boolean login(String name,String password)throws Exception;
	public void update(User user)throws Exception;
}
