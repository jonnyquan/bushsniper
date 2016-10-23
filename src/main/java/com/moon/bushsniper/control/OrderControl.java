package com.moon.bushsniper.control;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moon.bushsniper.bean.Order;
import com.moon.bushsniper.bean.OrderQueryParam;
import com.moon.bushsniper.bean.User;
import com.moon.bushsniper.service.OrderService;
import com.moon.bushsniper.utils.DateUtils;
import com.moon.bushsniper.utils.ImgUtils;

@Controller
@RequestMapping("/order")
public class OrderControl {

	private static Logger logger = LoggerFactory.getLogger(OrderControl.class);
	@Autowired
	private OrderService orderService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public String listPage(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		OrderQueryParam param = new OrderQueryParam();
		param.setUserId(user.getId());
		param.setOrderBy("open_time");
		param.setOrderType("desc");
		param.setType("1");
		List<Order> orders = orderService.query(param);
		request.setAttribute("orders", orders);
		return "order/list";
	}

	@RequestMapping(value = "/detailPage", method = RequestMethod.GET)
	public String detailPage(HttpServletRequest request) {
		String orderId = request.getParameter("orderId");
		User user = (User) request.getSession().getAttribute("user");
		OrderQueryParam param = new OrderQueryParam();
		param.setUserId(user.getId());
		param.setOrderId(orderId);
		List<Order> orders = orderService.query(param);
		if (orders != null && orders.size() == 1) {
			request.setAttribute("order", orders.get(0));
		} else {
			logger.error("Cannot find order[{}] from db.", orderId);
		}
		return "order/detail";
	}

	@RequestMapping(value = "/addPage", method = RequestMethod.GET)
	public String addPage(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		String orderId = user.getName() + "_" + DateUtils.format(new Date(), "yyyyMMddHHmmss");
		request.setAttribute("orderId", orderId);
		request.setAttribute("userId", user.getId());
		return "order/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Order order) {
		order.setOrderType("1");
		boolean result = orderService.addOrder(order);
		logger.info("Add order[{}] : {}", new Object[] { order.getId(), result });
		return "order/detail";
	}

	@RequestMapping(value = "/editPage", method = RequestMethod.GET)
	public String editPage(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		String orderId = request.getParameter("orderId");
		OrderQueryParam orderParam = new OrderQueryParam();
		orderParam.setOrderId(StringUtils.defaultString(orderId, "_null_order"));
		List<Order> orders = orderService.query(orderParam);
		if (orders != null && orders.size() > 0) {
			Order order = orders.get(0);
			request.setAttribute("order", order);
			request.setAttribute("user", user);
		}
		return "order/edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(Order order) {
		if (order != null) {
			order.setOrderType("1");
			boolean result = orderService.editOrder(order);
			logger.info("Edit order[{}] : {}", new Object[] { order.getId(), result });
		}
		return "order/detail";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	@ResponseBody
	public String delete(HttpServletRequest request) {
		Boolean result = false;
		String orderId = request.getParameter("orderId");
		if (StringUtils.isEmpty(orderId)) {
			return result.toString();
		}
		result = orderService.deleteOrder(orderId);
		try {
			if (result) {
				User user = (User) request.getSession().getAttribute("user");
				File imgFileDir = new File(ImgUtils.getImgDir() + "/" + user.getName() + "/" + orderId);
				FileUtils.deleteDirectory(imgFileDir);
				logger.info("Delete order[id={}] : {}", new Object[] { orderId, result });
			}
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
		return result.toString();
	}
}
