package com.moon.bushsniper.service;

import java.util.List;

import com.moon.bushsniper.bean.Order;
import com.moon.bushsniper.bean.OrderQueryParam;

public interface OrderService {

	boolean addOrder(Order order);

	boolean editOrder(Order order);
	
	boolean deleteOrder(String orderId);

	List<Order> query(OrderQueryParam param);

}
