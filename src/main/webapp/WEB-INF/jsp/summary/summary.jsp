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
<link rel="stylesheet" href="${basePath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${basePath}/resources/bootstrap/css/bootstrap-theme.min.css">
<script src="${basePath}/resources/js/jquery.js"></script>
<script src="${basePath}/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		changeSelect('summary');
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<jsp:include page="/WEB-INF/jsp/left.jsp"></jsp:include>
				<center>
					<img src="${basePath}/resources/picture/jiexi.jpg"></img>
				</center>
			</div>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h2 class="page-header"></h2>
			<div class="row placeholders">
				<div class="col-xs-6 col-sm-3 placeholder">
					<h4>今日收益率</h4>
					<div class="text-muted" style="margin-top: 20px">
						<fmt:formatNumber value="${dayRate * 100}" pattern="#.##" type="number" />%
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 placeholder">
					<h4>本周收益率</h4>
					<div class="text-muted" style="margin-top: 20px">
						<fmt:formatNumber value="${weekRate * 100}" pattern="#.##" type="number" />%
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 placeholder">
					<h4>本月收益率</h4>
					<div class="text-muted" style="margin-top: 20px">
						<fmt:formatNumber value="${monthRate * 100}" pattern="#.##" type="number" />%
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
