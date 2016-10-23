package com.moon.bushsniper.bean;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {

	private static final long serialVersionUID = 3187358691246733416L;
	// 单号
	private String id;
	// 订单类型(0:入金，出金;1:交易)
	private String orderType;
	// 用户id
	private String userId;
	// 交易品种
	private String variety;
	// 交易方向 sell/buy
	private String side;
	// 交易手数
	private float volume;
	// 止损
	private float stopLoss;
	// 止盈
	private float stopProfit;
	// 盈亏
	private float gain;
	// 技术主线
	private String techLine;
	// 预测方向 sell/buy
	private String predictSide;
	// 实际方向 sell/buy
	private String actualSide;
	// 操作自评分数
	private int operateScore;
	// 开仓时间
	private Date openTime;
	// 平仓时间
	private Date closeTime;
	// 操作详情
	private String operateDetail;
	// 交易计划
	private String plan;
	// 操作总结
	private String introspection;
	// 账户余额
	private float balance;
	// 15分钟图url
	private String m15Pic;
	// 30分钟图url
	private String m30Pic;
	// 一小时图url
	private String h1Pic;
	// 4小时图url
	private String h4Pic;
	// 1天图url
	private String d1Pic;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}

	public String getSide() {
		return side;
	}

	public void setSide(String side) {
		this.side = side;
	}

	public float getVolume() {
		return volume;
	}

	public void setVolume(float volume) {
		this.volume = volume;
	}

	public float getStopLoss() {
		return stopLoss;
	}

	public void setStopLoss(float stopLoss) {
		this.stopLoss = stopLoss;
	}

	public float getStopProfit() {
		return stopProfit;
	}

	public void setStopProfit(float stopProfit) {
		this.stopProfit = stopProfit;
	}

	public float getGain() {
		return gain;
	}

	public void setGain(float gain) {
		this.gain = gain;
	}

	public String getTechLine() {
		return techLine;
	}

	public void setTechLine(String techLine) {
		this.techLine = techLine;
	}

	public String getPredictSide() {
		return predictSide;
	}

	public void setPredictSide(String predictSide) {
		this.predictSide = predictSide;
	}

	public String getActualSide() {
		return actualSide;
	}

	public void setActualSide(String actualSide) {
		this.actualSide = actualSide;
	}

	public int getOperateScore() {
		return operateScore;
	}

	public void setOperateScore(int operateScore) {
		this.operateScore = operateScore;
	}

	public Date getOpenTime() {
		return openTime;
	}

	public void setOpenTime(Date openTime) {
		this.openTime = openTime;
	}

	public Date getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}

	public String getOperateDetail() {
		return operateDetail;
	}

	public void setOperateDetail(String operateDetail) {
		this.operateDetail = operateDetail;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public String getIntrospection() {
		return introspection;
	}

	public void setIntrospection(String introspection) {
		this.introspection = introspection;
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}

	public String getM15Pic() {
		return m15Pic;
	}

	public void setM15Pic(String m15Pic) {
		this.m15Pic = m15Pic;
	}

	public String getM30Pic() {
		return m30Pic;
	}

	public void setM30Pic(String m30Pic) {
		this.m30Pic = m30Pic;
	}

	public String getH1Pic() {
		return h1Pic;
	}

	public void setH1Pic(String h1Pic) {
		this.h1Pic = h1Pic;
	}

	public String getH4Pic() {
		return h4Pic;
	}

	public void setH4Pic(String h4Pic) {
		this.h4Pic = h4Pic;
	}

	public String getD1Pic() {
		return d1Pic;
	}

	public void setD1Pic(String d1Pic) {
		this.d1Pic = d1Pic;
	}

}
