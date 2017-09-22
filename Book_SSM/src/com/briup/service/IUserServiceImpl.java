package com.briup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.bean.User;
import com.briup.dao.IUserDao;

@Service("userService")
public class IUserServiceImpl implements IUserService{
	
	@Autowired
	private IUserDao userDao;

	@Override
	public void register(User user) throws Exception {
		// TODO Auto-generated method stub
		if(userDao.findUserByName(user.getName())==null){
			userDao.savaUser(user);
		}
	}

	@Override
	public boolean login(String name, String password) throws Exception {
		// TODO Auto-generated method stub
		User user=userDao.findUserByName(name);
		if(user!=null){
			if(password.equals(user.getPassword())){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}

	@Override
	public void update(User user) throws Exception {
		// TODO Auto-generated method stub
		userDao.updateUser(user);
	}
	
}
