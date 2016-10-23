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
		changeSelect('strategy');
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
          <h2 class="page-header">交易策略</h2>
          <h4>买点：布林线收窄，<span style="color:red">大阴线</span>或<span style="color:red">大阳线</span>击穿上/下轨且突破横盘历史高/低位，等K线完全拉出确认有效击穿，记作信号K线。看15M/5M线伺机入场。</h4>
          <h4>止损：当信号K线反蚀殆尽时坚决止损离场。</h4>
          <h4>止盈：当主参考周期拉出一条相反K线后，在下一条K线伺机离场。或当走势强劲时，次参考周期拉出一条反向K线后，在下一条K线离场。</h4>
          <h4>仓位：每100$入场0.01手，且最多可加仓两次，最多加仓0.02手。当资金量大时，按比例建仓加仓。</h4>
          
	  </div>
    </div>
</body>
</html>
