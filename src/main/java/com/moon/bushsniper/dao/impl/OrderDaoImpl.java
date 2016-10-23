package com.moon.bushsniper.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moon.bushsniper.bean.Order;
import com.moon.bushsniper.bean.OrderQueryParam;
import com.moon.bushsniper.dao.OrderDao;

@Repository("orderDao")
public class OrderDaoImpl implements OrderDao {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public boolean insertOrder(Order order) {
		int line = session.insert("Order.insertOrder", order);
		return line == 1;
	}

	@Override
	public List<Order> selectOrder(OrderQueryParam param) {
		return session.selectList("Order.selectOrder", param);
	}

	@Override
	public boolean updateOrder(Order order) {
		int line = session.update("Order.updateOrder", order);
		return line == 1;
	}

	@Override
	public boolean deleteOrder(String orderId) {
		int line = session.delete("Order.deleteOrder", orderId);
		return line == 1;
	}

	@Override
	public Float getBalance(String userId, Date time) {
		float balance = 0;
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("userId", userId);
		param.put("time", time);
		Order order = session.selectOne("Order.selectBalance", param);
		if (order.getOrderType().equals("0") && order.getBalance() == 0) {
			balance = order.getGain();
		} else {
			balance = order.getBalance();
		}
		return balance;
	}

}
