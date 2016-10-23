<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	$(document).ready(function(){
		changeSelect('discipline');
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <jsp:include page="/WEB-INF/jsp/left.jsp"></jsp:include>
        </div>
      </div>
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h2 class="page-header">交易纪律</h2>
          <h4>1.交易前必须制定交易计划，交易后要有交易记录</h4>
          <h4>2.不可以时时盯着盘面，每一个时间K线周期看一次</h4>
          <h4>3.外汇如战场，身体或精神状态不佳时严禁交易</h4>
          <h4>4.靠概率取胜</h4>
	  </div>
    </div>
</body>
</html>
