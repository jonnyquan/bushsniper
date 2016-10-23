package com.moon.bushsniper.service.impl;

import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moon.bushsniper.dao.OrderDao;
import com.moon.bushsniper.service.StatisticsService;
import com.moon.bushsniper.utils.DateUtils;

@Service("statisticsService")
public class StatisticsServiceImpl implements StatisticsService {

	@Autowired
	private OrderDao orderDao;

	@Override
	public float getTodayGainRate(String userId) {
		Date today = new Date();
		String start = DateUtils.format(today, "yyyy-MM-dd 00:00:00");
		String end = DateUtils.format(today, "yyyy-MM-dd 23:59:59");
		float startBalance = orderDao.getBalance(userId, DateUtils.parse(start));
		float endBalance = orderDao.getBalance(userId, DateUtils.parse(end));
		return (endBalance - startBalance) / startBalance;
	}

	@Override
	public float getWeekGainRate(String userId) {
		Calendar cal = Calendar.getInstance();
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		cal.add(Calendar.DAY_OF_MONTH, 1 - dayOfWeek);
		String start = DateUtils.format(cal.getTime(), "yyyy-MM-dd 00:00:00");
		cal.add(Calendar.WEEK_OF_MONTH, 1);
		String end = DateUtils.format(cal.getTime(), "yyyy-MM-dd 00:00:00");
		float startBalance = orderDao.getBalance(userId, DateUtils.parse(start));
		float endBalance = orderDao.getBalance(userId, DateUtils.parse(end));
		return (endBalance - startBalance) / startBalance;
	}

	@Override
	public float getMonthGainRate(String userId) {
		Calendar cal = Calendar.getInstance();
		int dayOfMonth = cal.get(Calendar.DAY_OF_MONTH);
		cal.add(Calendar.DAY_OF_MONTH, 1 - dayOfMonth);
		String start = DateUtils.format(cal.getTime(), "yyyy-MM-dd 00:00:00");
		cal.add(Calendar.MONTH, 1);
		String end = DateUtils.format(cal.getTime(), "yyyy-MM-dd 00:00:00");
		float startBalance = orderDao.getBalance(userId, DateUtils.parse(start));
		float endBalance = orderDao.getBalance(userId, DateUtils.parse(end));
		return (endBalance - startBalance) / startBalance;
	}

}
