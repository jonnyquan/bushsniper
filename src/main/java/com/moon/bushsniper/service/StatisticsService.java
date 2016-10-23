package com.moon.bushsniper.service;

public interface StatisticsService {

	float getTodayGainRate(String userId);

	float getWeekGainRate(String userId);

	float getMonthGainRate(String userId);

}
