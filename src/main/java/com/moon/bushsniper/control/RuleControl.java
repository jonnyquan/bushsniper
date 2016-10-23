package com.moon.bushsniper.control;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/rule")
public class RuleControl {

	private static Logger logger = LoggerFactory.getLogger(RuleControl.class);

	/**
	 * 交易原则页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/principlePage", method = RequestMethod.GET)
	public String principlePage(HttpServletRequest request) {
		return "rule/principle";
	}

	/**
	 * 交易策略页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/strategyPage", method = RequestMethod.GET)
	public String strategyPage(HttpServletRequest request) {
		return "rule/strategy";
	}

	/**
	 * 交易纪律页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/disciplinePage", method = RequestMethod.GET)
	public String disciplinePage(HttpServletRequest request) {
		return "rule/discipline";
	}

}
