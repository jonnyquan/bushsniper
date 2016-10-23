package com.moon.bushsniper.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moon.bushsniper.bean.Order;
import com.moon.bushsniper.bean.OrderQueryParam;
import com.moon.bushsniper.dao.OrderDao;
import com.moon.bushsniper.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;

	@Override
	public boolean addOrder(Order order) {
		return orderDao.insertOrder(order);
	}

	@Override
	public boolean editOrder(Order order) {
		return orderDao.updateOrder(order);
	}

	@Override
	public boolean deleteOrder(String orderId) {
		return orderDao.deleteOrder(orderId);
	}

	@Override
	public List<Order> query(OrderQueryParam param) {
		return orderDao.selectOrder(param);
	}

}
