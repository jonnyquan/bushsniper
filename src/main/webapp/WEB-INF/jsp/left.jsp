<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${basePath}/resources/css/dashboard.css">
<script type="text/javascript">
function changeSelect(id){
	$("#leftMenu").find("ul li").removeAttr("class");
	$("#"+id).attr("class","active");
	var url = $("#"+id).find("a").attr("href");
	//window.location.href = url;
}
</script>
<div id="leftMenu" class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li id="summary" onclick="changeSelect('summary');"><a href="${basePath}/summary/summaryPage.action">预览</a></li>
		<li id="listOrder" onclick="changeSelect('listOrder');"><a href="${basePath}/order/listPage.action">记录列表</a></li>
		<li id="detailOrder" onclick="changeSelect('detailOrder');"><a href="${basePath}/order/detailPage.action">记录详情</a></li>
		<li id="addOrder" onclick="changeSelect('addOrder');"><a href="${basePath}/order/addPage.action">添加记录</a></li>
		<li id="editOrder" onclick="changeSelect('editOrder');"><a href="${basePath}/order/editPage.action">修改记录</a></li>
	</ul>
	<!--  
	<ul class="nav nav-sidebar">
		<li><a href="#">统计</a></li>
		<li><a href="#">分析</a></li>
		<li><a href="#">交易反省</a></li>
	</ul>
	-->
	<ul class="nav nav-sidebar">
		<li id="principle" onclick="changeSelect('principle');"><a href="${basePath}/rule/principlePage.action">交易原则</a></li>
		<li id="strategy" onclick="changeSelect('strategy');"><a href="${basePath}/rule/strategyPage.action">交易策略</a></li>
		<li id="discipline" onclick="changeSelect('discipline');"><a href="${basePath}/rule/disciplinePage.action">交易纪律</a></li>
	</ul>
</div>