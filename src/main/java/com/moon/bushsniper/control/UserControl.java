package com.moon.bushsniper.control;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moon.bushsniper.bean.User;
import com.moon.bushsniper.service.UserService;

@Controller
@RequestMapping("/user")
public class UserControl {

	private static Logger logger = LoggerFactory.getLogger(UserControl.class);
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void index(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String basePath = (String) request.getAttribute("basePath");
		String page = null;
		User u = userService.getUser(user.getEmail(), user.getPassword());
		if (u != null) {
			request.getSession().setAttribute("user", u);
			page = basePath + "/summary/summaryPage.action";
		} else {
			page = basePath;
		}
		response.sendRedirect(page);
	}

}
