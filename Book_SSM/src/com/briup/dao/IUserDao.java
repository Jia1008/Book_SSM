package com.briup.dao;

import com.briup.bean.User;

public interface IUserDao {
	void savaUser(User user);
	User findUserByName(String name);
	void updateUser(User user);
}
