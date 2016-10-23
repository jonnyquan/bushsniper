package com.moon.bushsniper.bean;

import java.io.Serializable;

public class OrderQueryParam implements Serializable {

	private static final long serialVersionUID = -8814761237667145836L;
	private String orderId;
	private String userId;
	// 类型:入金 or 交易
	private String type;
	private String orderBy = "open_time";
	private String orderType = "desc";

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

}
