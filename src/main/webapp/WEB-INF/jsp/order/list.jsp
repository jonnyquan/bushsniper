<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${basePath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${basePath}/resources/bootstrap/css/bootstrap-theme.min.css">
<script src="${basePath}/resources/js/jquery.js"></script>
<script src="${basePath}/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		changeSelect('listOrder');
	});
	function deleteOrder(orderId) {
		if (!confirm('确认删除?')) {
			return;
		}
		$.ajax({
			type : "GET",
			url : "${basePath}/order/delete.action?orderId=" + orderId,
			success : function(data) {
				alert(data);
				window.location.reload();
			}
		});
	}
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<jsp:include page="/WEB-INF/jsp/left.jsp"></jsp:include>
				<h2 class="sub-header">交易流水</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="padding-right: 0px">单据号</th>
								<th style="padding-right: 0px">交易品种</th>
								<th style="padding-right: 0px">交易类型</th>
								<th style="padding-right: 0px">开仓时间</th>
								<th style="padding-right: 0px">平仓时间</th>
								<th style="padding-right: 0px">止损</th>
								<th style="padding-right: 0px">止盈</th>
								<th style="padding-right: 0px">盈亏/(比)</th>
								<th style="padding-right: 0px">账户余额</th>
								<th style="padding-right: 0px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orders}" var="order">
								<tr>
									<td>#${order.id}</td>
									<td>${order.variety}</td>
									<td>${order.side}</td>
									<td><fmt:formatDate value="${order.openTime}"
											pattern="yyyy-MM-dd HH:mm:ss" /></td>
									<td><fmt:formatDate value="${order.closeTime}"
											pattern="yyyy-MM-dd HH:mm:ss" /></td>
									<td>${order.stopLoss}</td>
									<td>${order.stopProfit}</td>
									<td>${order.gain}$/(<fmt:formatNumber
											value="${order.gain/(order.balance - order.gain) * 100}"
											pattern="#.##" type="number" />%)
									</td>
									<td>${order.balance}$</td>
									<td><a
										href="${basePath}/order/detailPage.action?orderId=${order.id}">详情</a>
										| <a
										href="${basePath}/order/editPage.action?orderId=${order.id}">改</a>
										| <a href="javascript:deleteOrder('${order.id}');">删</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
