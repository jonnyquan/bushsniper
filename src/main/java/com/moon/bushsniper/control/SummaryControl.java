package com.moon.bushsniper.control;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moon.bushsniper.bean.User;
import com.moon.bushsniper.service.StatisticsService;

@Controller
@RequestMapping("/summary")
public class SummaryControl {

	private static Logger logger = LoggerFactory.getLogger(SummaryControl.class);
	@Autowired
	private StatisticsService statisticsService;

	@RequestMapping(value = "/summaryPage", method = RequestMethod.GET)
	public String addPage(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		float dayRate = statisticsService.getTodayGainRate(user.getId());
		float weekRate = statisticsService.getWeekGainRate(user.getId());
		float monthRate = statisticsService.getMonthGainRate(user.getId());
		request.setAttribute("dayRate", dayRate);
		request.setAttribute("weekRate", weekRate);
		request.setAttribute("monthRate", monthRate);
		return "summary/summary";
	}

}
