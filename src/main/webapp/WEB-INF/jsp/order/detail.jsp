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
<link rel="stylesheet" href="${basePath}/resources/css/imgPopDiv.css">
<script type="text/javascript">
	$(document).ready(function(){
		changeSelect('detailOrder');
	});
	function showImg(id){
		$("#"+id).css("display","block");
	}
	function closeImg(id){
		$("#"+id).css("display","none");
	}
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <jsp:include page="/WEB-INF/jsp/left.jsp"></jsp:include>
          <h2 class="sub-header">详情:#${order.id}号单据</h2>
          <div class="table-responsive">
           <table border="1px" width="100%" height="100%">
           <tr>
           		<td align="center" height="70px">
           			交易单据
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="10%" style="border-right:1px solid grey;" align="center">交易品种</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.variety}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">交易方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.side}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">交易手数</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.volume}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">止损</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.stopLoss}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">止盈</td>
			           		<td align="center">
			           			<c:if test="${order.stopProfit != null}">${order.stopProfit}</c:if>
			           			<c:if test="${order.stopProfit == null}">&nbsp;</c:if>
			           		</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="10%" style="border-right:1px solid grey;" align="center">技术主线</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.techLine}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">预测方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.predictSide}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">实际方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.actualSide}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">盈亏($)</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">${order.gain}</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">操作评分</td>
			           		<td align="center">
			           			<c:if test="${order.operateScore != null}">${order.operateScore}</c:if>
			           			<c:if test="${order.operateScore == null}">&nbsp;</c:if>
			           		</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
					<table width="100%">
           				<tr>
           					<td width="25%" style="border-right:1px solid grey;" align="center">开仓时间</td>
			           		<td width="25%" style="border-right:1px solid grey;" align="center"><fmt:formatDate value="${order.openTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
           					<td width="25%" style="border-right:1px solid grey;" align="center">平仓时间</td>
			           		<td align="center">
			           			<c:if test="${order.closeTime != null}"><fmt:formatDate value="${order.closeTime}" pattern="yyyy-MM-dd HH:mm:ss"/></c:if>
			           			<c:if test="${order.closeTime == null}">&nbsp;</c:if>
			           		</td>
           				</tr>
           			</table>
				</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">交易计划</td>
			           		<td align="left">${order.plan}&nbsp;</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">操作详情</td>
			           		<td align="left">${order.operateDetail}&nbsp;</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">交易总结</td>
			           		<td align="left">${order.introspection}&nbsp;</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="250px" style="border-right:1px solid grey;" align="center">15M分时图</td>
			           		<td align="left">
								<c:if test="${order.m15Pic != null}">
									<img alt="" width="100%" height="100%" src="${basePath}/resources/img/${order.m15Pic}" onmouseover="this.style.cursor='pointer'" onclick="showImg('m15PopDiv')">
								</c:if>
								<c:if test="${order.m15Pic == null}">
									&nbsp;
								</c:if>
								<div id="m15PopDiv" class="imgPopDiv" style="display:none;" onclick="closeImg('m15PopDiv');">
									<img src="${basePath}/resources/img/${order.m15Pic}" onmouseover="this.style.cursor='pointer'" >
								</div>
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="250px" style="border-right:1px solid grey;" align="center">30M分时图</td>
			           		<td align="left">
								<c:if test="${order.m30Pic != null}">
									<img alt="" width="100%" height="100%" src="${basePath}/resources/img/${order.m30Pic}" onmouseover="this.style.cursor='pointer'" onclick="showImg('m30PopDiv')">
								</c:if>
								<c:if test="${order.m30Pic == null}">
									&nbsp;
								</c:if>
								<div id="m30PopDiv" class="imgPopDiv" style="display:none;" onclick="closeImg('m30PopDiv');">
									<img src="${basePath}/resources/img/${order.m30Pic}" onmouseover="this.style.cursor='pointer'" >
								</div>
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="250px" style="border-right:1px solid grey;" align="center">1H分时图</td>
			           		<td align="left">
								<c:if test="${order.h1Pic != null}">
									<img alt="" width="100%" height="100%" src="${basePath}/resources/img/${order.h1Pic}" onmouseover="this.style.cursor='pointer'" onclick="showImg('h1PopDiv')">
								</c:if>
								<c:if test="${order.h1Pic == null}">
									&nbsp;
								</c:if>
								<div id="h1PopDiv" class="imgPopDiv" style="display:none;" onclick="closeImg('h1PopDiv');">
									<img src="${basePath}/resources/img/${order.h1Pic}" onmouseover="this.style.cursor='pointer'" >
								</div>
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="250px" style="border-right:1px solid grey;" align="center">4H分时图</td>
			           		<td align="left">
								<c:if test="${order.h4Pic != null}">
									<img alt="" width="100%" height="100%" src="${basePath}/resources/img/${order.h4Pic}" onmouseover="this.style.cursor='pointer'" onclick="showImg('h4PopDiv')">
								</c:if>
								<c:if test="${order.h4Pic == null}">
									&nbsp;
								</c:if>
								<div id="h4PopDiv" class="imgPopDiv" style="display:none;" onclick="closeImg('h4PopDiv');">
									<img src="${basePath}/resources/img/${order.h4Pic}" onmouseover="this.style.cursor='pointer'" >
								</div>
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="250px" style="border-right:1px solid grey;" align="center">1D分时图</td>
			           		<td align="left">
								<c:if test="${order.d1Pic != null}">
									<img alt="" width="100%" height="100%" src="${basePath}/resources/img/${order.d1Pic}" onmouseover="this.style.cursor='pointer'" onclick="showImg('d1PopDiv')">
								</c:if>
								<c:if test="${order.d1Pic == null}">
									&nbsp;
								</c:if>
								<div id="d1PopDiv" class="imgPopDiv" style="display:none;" onclick="closeImg('d1PopDiv');">
									<img src="${basePath}/resources/img/${order.d1Pic}" onmouseover="this.style.cursor='pointer'" >
								</div>
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           </table>
          </div>
        </div>
      </div>
    </div>
    
</body>
</html>
