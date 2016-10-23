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
<link rel="stylesheet" href="${basePath}/resources/My97DatePicker/skin/WdatePicker.css">
<script src="${basePath}/resources/My97DatePicker/WdatePicker.js" type="text/javascript"></script> 
<script type="text/javascript">
	$(document).ready(function(){
		changeSelect('editOrder');
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <jsp:include page="/WEB-INF/jsp/left.jsp"></jsp:include>
          <h2 class="sub-header">修改单据:#${order.id}号</h2>
          <form id="order" name="order" action="${basePath}/order/edit.action" method="post" >
          <input id="id" name="id" type="hidden" value="${order.id}" />
          <input id="userId" name="userId" type="hidden" value="${user.id}" />
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
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<select id="variety" name="variety" style="width: 100%; height: 100%;">
									<option <c:if test="${order.variety == 'AUDCADpro'}">selected="selected"</c:if>>AUDCADpro</option>
									<option <c:if test="${order.variety == 'AUDCHFpro'}">selected="selected"</c:if>>AUDCHFpro</option>
									<option <c:if test="${order.variety == 'AUDJPYpro'}">selected="selected"</c:if>>AUDJPYpro</option>
									<option <c:if test="${order.variety == 'AUDNZDpro'}">selected="selected"</c:if>>AUDNZDpro</option>
									<option <c:if test="${order.variety == 'AUDUSDpro'}">selected="selected"</c:if>>AUDUSDpro</option>
									<option <c:if test="${order.variety == 'CADCHFpro'}">selected="selected"</c:if>>CADCHFpro</option>
									<option <c:if test="${order.variety == 'CADJPYpro'}">selected="selected"</c:if>>CADJPYpro</option>
									<option <c:if test="${order.variety == 'CHFJPYpro'}">selected="selected"</c:if>>CHFJPYpro</option>
									<option <c:if test="${order.variety == 'EURAUDpro'}">selected="selected"</c:if>>EURAUDpro</option>
									<option <c:if test="${order.variety == 'EURCADpro'}">selected="selected"</c:if>>EURCADpro</option>
									<option <c:if test="${order.variety == 'EURCHFpro'}">selected="selected"</c:if>>EURCHFpro</option>
									<option <c:if test="${order.variety == 'EURCZKpro'}">selected="selected"</c:if>>EURCZKpro</option>
									<option <c:if test="${order.variety == 'EURDKKpro'}">selected="selected"</c:if>>EURDKKpro</option>
									<option <c:if test="${order.variety == 'EURGBPpro'}">selected="selected"</c:if>>EURGBPpro</option>
									<option <c:if test="${order.variety == 'EURHUFpro'}">selected="selected"</c:if>>EURHUFpro</option>
									<option <c:if test="${order.variety == 'EURJPYpro'}">selected="selected"</c:if>>EURJPYpro</option>
									<option <c:if test="${order.variety == 'EURNOKpro'}">selected="selected"</c:if>>EURNOKpro</option>
									<option <c:if test="${order.variety == 'EURNZDpro'}">selected="selected"</c:if>>EURNZDpro</option>
									<option <c:if test="${order.variety == 'EURPLNpro'}">selected="selected"</c:if>>EURPLNpro</option>
									<option <c:if test="${order.variety == 'EURSEKpro'}">selected="selected"</c:if>>EURSEKpro</option>
									<option <c:if test="${order.variety == 'EURTRYpro'}">selected="selected"</c:if>>EURTRYpro</option>
									<option <c:if test="${order.variety == 'EURUSDpro'}">selected="selected"</c:if>>EURUSDpro</option>
									<option <c:if test="${order.variety == 'GBPAUDpro'}">selected="selected"</c:if>>GBPAUDpro</option>
									<option <c:if test="${order.variety == 'GBPCADpro'}">selected="selected"</c:if>>GBPCADpro</option>
									<option <c:if test="${order.variety == 'GBPCHFpro'}">selected="selected"</c:if>>GBPCHFpro</option>
									<option <c:if test="${order.variety == 'GBPJPYpro'}">selected="selected"</c:if>>GBPJPYpro</option>
									<option <c:if test="${order.variety == 'GBPNZDpro'}">selected="selected"</c:if>>GBPNZDpro</option>
									<option <c:if test="${order.variety == 'GBPUSDpro'}">selected="selected"</c:if>>GBPUSDpro</option>
									<option <c:if test="${order.variety == 'NZDCADpro'}">selected="selected"</c:if>>NZDCADpro</option>
									<option <c:if test="${order.variety == 'NZDCHFpro'}">selected="selected"</c:if>>NZDCHFpro</option>
									<option <c:if test="${order.variety == 'NZDJPYpro'}">selected="selected"</c:if>>NZDJPYpro</option>
									<option <c:if test="${order.variety == 'NZDUSDpro'}">selected="selected"</c:if>>NZDUSDpro</option>
									<option <c:if test="${order.variety == 'SGDJPYpro'}">selected="selected"</c:if>>SGDJPYpro</option>
									<option <c:if test="${order.variety == 'USDCADpro'}">selected="selected"</c:if>>USDCADpro</option>
									<option <c:if test="${order.variety == 'USDCHFpro'}">selected="selected"</c:if>>USDCHFpro</option>
									<option <c:if test="${order.variety == 'USDCZKpro'}">selected="selected"</c:if>>USDCZKpro</option>
									<option <c:if test="${order.variety == 'USDDKKpro'}">selected="selected"</c:if>>USDDKKpro</option>
									<option <c:if test="${order.variety == 'USDHUFpro'}">selected="selected"</c:if>>USDHUFpro</option>
									<option <c:if test="${order.variety == 'USDJPYpro'}">selected="selected"</c:if>>USDJPYpro</option>
									<option <c:if test="${order.variety == 'USDMXNpro'}">selected="selected"</c:if>>USDMXNpro</option>
									<option <c:if test="${order.variety == 'USDNOKpro'}">selected="selected"</c:if>>USDNOKpro</option>
									<option <c:if test="${order.variety == 'USDPLNpro'}">selected="selected"</c:if>>USDPLNpro</option>
									<option <c:if test="${order.variety == 'USDSEKpro'}">selected="selected"</c:if>>USDSEKpro</option>
									<option <c:if test="${order.variety == 'USDSGDpro'}">selected="selected"</c:if>>USDSGDpro</option>
									<option <c:if test="${order.variety == 'USDTRYpro'}">selected="selected"</c:if>>USDTRYpro</option>
									<option <c:if test="${order.variety == 'USDZARpro'}">selected="selected"</c:if>>USDZARpro</option>
									<option <c:if test="${order.variety == 'XAGUSDpro'}">selected="selected"</c:if>>XAGUSDpro</option>
									<option <c:if test="${order.variety == 'XAUAUDpro'}">selected="selected"</c:if>>XAUAUDpro</option>
									<option <c:if test="${order.variety == 'XAUCHFpro'}">selected="selected"</c:if>>XAUCHFpro</option>
									<option <c:if test="${order.variety == 'XAUEURpro'}">selected="selected"</c:if>>XAUEURpro</option>
									<option <c:if test="${order.variety == 'XAUGBPpro'}">selected="selected"</c:if>>XAUGBPpro</option>
									<option <c:if test="${order.variety == 'XAUJPYpro'}">selected="selected"</c:if>>XAUJPYpro</option>
									<option <c:if test="${order.variety == 'XAUUSDpro'}">selected="selected"</c:if>>XAUUSDpro</option>
									<option <c:if test="${order.variety == 'ZARJPYpro'}">selected="selected"</c:if>>ZARJPYpro</option>
									<option <c:if test="${order.variety == 'USDRUBpro'}">selected="selected"</c:if>>USDRUBpro</option>
									<option <c:if test="${order.variety == 'USDCNHpro'}">selected="selected"</c:if>>USDCNHpro</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">交易方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<select id="side" name="side" style="width: 100%; height: 100%;">
									<option <c:if test="${order.side == 'buy'}">selected="selected"</c:if>>buy</option>
									<option <c:if test="${order.side == 'sell'}">selected="selected"</c:if>>sell</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">交易手数</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<input id="volume" name="volume" type="text" value="${order.volume}" style="width: 100%; height: 100%;"/>
							</td>
							<td width="10%" style="border-right:1px solid grey;" align="center">止损</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<input id="stopLoss" name="stopLoss" type="text" value="${order.stopLoss}" style="width: 100%; height: 100%;"/>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">止盈</td>
							<td align="center">
								<input id="stopProfit" name="stopProfit" type="text" value="${order.stopProfit}" style="width: 100%; height: 100%;"/>
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
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
			           			<select id="techLine" name="techLine" style="width: 100%; height: 100%;">
									<option <c:if test="${order.techLine == '15M'}">selected="selected"</c:if>>15M</option>
									<option <c:if test="${order.techLine == '30M'}">selected="selected"</c:if>>30M</option>
									<option <c:if test="${order.techLine == '1H'}">selected="selected"</c:if>>1H</option>
									<option <c:if test="${order.techLine == '4H'}">selected="selected"</c:if>>4H</option>
									<option <c:if test="${order.techLine == '1D'}">selected="selected"</c:if>>1D</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">预测方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
			           			<select id="predictSide" name="predictSide" style="width: 100%; height: 100%;">
									<option <c:if test="${order.predictSide == 'up'}">selected="selected"</c:if>>up</option>
									<option <c:if test="${order.predictSide == 'down'}">selected="selected"</c:if>>down</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">实际方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
			           			<select id="actualSide" name="actualSide" style="width: 100%; height: 100%;">
									<option <c:if test="${order.actualSide == 'up'}">selected="selected"</c:if>>up</option>
									<option <c:if test="${order.actualSide == 'down'}">selected="selected"</c:if>>down</option>
								</select>
							</td>
							<td width="10%" style="border-right:1px solid grey;" align="center">盈亏</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<input id="gain" name="gain" type="text" style="width: 100%; height: 100%;" value="<fmt:formatNumber value="${order.gain}" pattern="#.##" type="number" />"/>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">操作评分</td>
			           		<td align="center">
								<input id="operateScore" name="operateScore" type="text" value="${order.operateScore}" style="width: 100%; height: 100%;"/>
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
			           		<td width="25%" style="border-right:1px solid grey;" align="center">
			           			<input id="openTime" name="openTime" type="text" value="<fmt:formatDate value="${order.openTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"  class="Wdate" style="width: 100%; height: 100%;" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
			           		</td>
           					<td width="25%" style="border-right:1px solid grey;" align="center">平仓时间</td>
			           		<td align="center">
			           			<input id="closeTime" name="closeTime" type="text" value="<fmt:formatDate value="${order.closeTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"  class="Wdate" style="width: 100%; height: 100%;" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
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
			           		<td align="left"><input id="plan" name="plan" type="text" value="${order.plan}" style="width: 100%; height: 100%;"/></td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">操作详情</td>
			           		<td align="left"><input id="operateDetail" name="operateDetail" type="text" value="${order.operateDetail}" style="width: 100%; height: 100%;"/></td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">交易总结</td>
			           		<td align="left"><input id="introspection" name="introspection" type="text" value="${order.introspection}" style="width: 100%; height: 100%;"/></td>
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
			           			<input id="m15Pic" name="m15Pic" type="hidden"  value="" />
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${order.id}" lineType="m15" src="${basePath}/file/imgPage.action?orderId=${order.id}&lineType=m15"></iframe>
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
			           			<input id="m30Pic" name="m30Pic" type="hidden"  value="" />
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${order.id}" lineType="m30" src="${basePath}/file/imgPage.action?orderId=${order.id}&lineType=m30"></iframe>
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
			           			<input id="h1Pic" name="h1Pic" type="hidden"  value="" />
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${order.id}" lineType="h1" src="${basePath}/file/imgPage.action?orderId=${order.id}&lineType=h1"></iframe>
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
			           			<input id="h4Pic" name="h4Pic" type="hidden"  value="" />
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${order.id}" lineType="h4" src="${basePath}/file/imgPage.action?orderId=${order.id}&lineType=h4"></iframe>
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
			           			<input id="d1Pic" name="d1Pic" type="hidden"  value="" />
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${order.id}" lineType="d1" src="${basePath}/file/imgPage.action?orderId=${order.id}&lineType=d1"></iframe>
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="100%" height="80px" align="center">
								<input type="submit" value="提交" />
							</td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           </table>
          </div>
      	  </form>
      </div>
    </div>
	</div>
    
</body>
</html>
