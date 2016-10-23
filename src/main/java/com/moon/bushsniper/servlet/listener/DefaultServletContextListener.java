package com.moon.bushsniper.servlet.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.moon.bushsniper.utils.ImgUtils;

public class DefaultServletContextListener implements ServletContextListener {

	private static Logger logger = LoggerFactory.getLogger(DefaultServletContextListener.class);

	@Override
	public void contextInitialized(ServletContextEvent event) {
		logger.info("ServletContext contextInitializing...");
		String imgDir = event.getServletContext().getRealPath("") + "/resources/img";
		ImgUtils.setImgDir(imgDir);
	}

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// do nothing
	}

}
