package com.moon.bushsniper.servlet.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.moon.bushsniper.bean.User;

public class DefaultHandlerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
		request.setAttribute("basePath", basePath);
		// 未登陆过滤
		User u = (User) request.getSession().getAttribute("user");
		if (u == null && !request.getRequestURL().toString().contains("login.action")) {
			response.sendRedirect(basePath);
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		// TODO Auto-generated method stub
	}

}
