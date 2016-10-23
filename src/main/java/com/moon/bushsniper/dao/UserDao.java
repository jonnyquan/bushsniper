package com.moon.bushsniper.dao;

import com.moon.bushsniper.bean.User;

public interface UserDao {

	User selectUser(String name, String password);

}
