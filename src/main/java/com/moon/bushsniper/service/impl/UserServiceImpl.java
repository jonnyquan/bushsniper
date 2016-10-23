package com.moon.bushsniper.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moon.bushsniper.bean.User;
import com.moon.bushsniper.dao.UserDao;
import com.moon.bushsniper.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public User getUser(String name, String password) {
		return userDao.selectUser(name, password);
	}

}
