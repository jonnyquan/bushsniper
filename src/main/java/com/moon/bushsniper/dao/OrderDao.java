package com.moon.bushsniper.dao;

import java.util.Date;
import java.util.List;

import com.moon.bushsniper.bean.Order;
import com.moon.bushsniper.bean.OrderQueryParam;

public interface OrderDao {

	boolean insertOrder(Order order);

	List<Order> selectOrder(OrderQueryParam param);

	boolean updateOrder(Order order);

	boolean deleteOrder(String orderId);

	Float getBalance(String userId, Date time);

}
