package com.moon.bushsniper.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moon.bushsniper.bean.User;
import com.moon.bushsniper.dao.UserDao;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public User selectUser(String name, String password) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("name", name);
		param.put("email", name);
		param.put("password", password);
		User user = session.selectOne("User.selectUser", param);
		return user;
	}

}
