package com.moon.bushsniper.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DateUtils {

	private static Logger logger = LoggerFactory.getLogger(DateUtils.class);
	public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

	public static String format(Date date) {
		return format(date, null);
	}

	public static String format(Date date, String format) {
		if (date == null) {
			throw new RuntimeException("date is null.");
		}
		format = StringUtils.defaultIfEmpty(format, DEFAULT_DATE_FORMAT);
		return new SimpleDateFormat(format).format(date);
	}

	public static Date parse(String dateStr, String format) {
		if (dateStr == null) {
			return null;
		}
		Date date = null;
		format = StringUtils.defaultString(format, DEFAULT_DATE_FORMAT);
		try {
			date = new SimpleDateFormat(format).parse(dateStr);
		} catch (ParseException e) {
			logger.error(e.getMessage(), e);
		}
		return date;
	}

	public static Date parse(String date) {
		return parse(date, null);
	}

}
