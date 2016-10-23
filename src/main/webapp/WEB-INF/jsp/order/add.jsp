<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		changeSelect('addOrder');
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <jsp:include page="/WEB-INF/jsp/left.jsp"></jsp:include>
          <h2 class="sub-header">添加单据:#${orderId}号</h2>
          <form id="order" name="order" action="${basePath}/order/add.action" method="post" >
          <input id="id" name="id" type="hidden" value="${orderId}" />
          <input id="userId" name="userId" type="hidden" value="${userId}" />
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
									<option>AUDCADpro</option>
									<option>AUDCHFpro</option>
									<option>AUDJPYpro</option>
									<option>AUDNZDpro</option>
									<option>AUDUSDpro</option>
									<option>CADCHFpro</option>
									<option>CADJPYpro</option>
									<option>CHFJPYpro</option>
									<option>EURAUDpro</option>
									<option>EURCADpro</option>
									<option>EURCHFpro</option>
									<option>EURCZKpro</option>
									<option>EURDKKpro</option>
									<option>EURGBPpro</option>
									<option>EURHUFpro</option>
									<option>EURJPYpro</option>
									<option>EURNOKpro</option>
									<option>EURNZDpro</option>
									<option>EURPLNpro</option>
									<option>EURSEKpro</option>
									<option>EURTRYpro</option>
									<option>EURUSDpro</option>
									<option>GBPAUDpro</option>
									<option>GBPCADpro</option>
									<option>GBPCHFpro</option>
									<option>GBPJPYpro</option>
									<option>GBPNZDpro</option>
									<option>GBPUSDpro</option>
									<option>NZDCADpro</option>
									<option>NZDCHFpro</option>
									<option>NZDJPYpro</option>
									<option>NZDUSDpro</option>
									<option>SGDJPYpro</option>
									<option>USDCADpro</option>
									<option>USDCHFpro</option>
									<option>USDCZKpro</option>
									<option>USDDKKpro</option>
									<option>USDHUFpro</option>
									<option>USDJPYpro</option>
									<option>USDMXNpro</option>
									<option>USDNOKpro</option>
									<option>USDPLNpro</option>
									<option>USDSEKpro</option>
									<option>USDSGDpro</option>
									<option>USDTRYpro</option>
									<option>USDZARpro</option>
									<option>XAGUSDpro</option>
									<option>XAUAUDpro</option>
									<option>XAUCHFpro</option>
									<option>XAUEURpro</option>
									<option>XAUGBPpro</option>
									<option>XAUJPYpro</option>
									<option>XAUUSDpro</option>
									<option>ZARJPYpro</option>
									<option>USDRUBpro</option>
									<option>USDCNHpro</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">交易方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<select id="side" name="side" style="width: 100%; height: 100%;">
									<option>buy</option>
									<option>sell</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">交易手数</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<input id="volume" name="volume" type="text" style="width: 100%; height: 100%;"/>
							</td>
							<td width="10%" style="border-right:1px solid grey;" align="center">止损</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<input id="stopLoss" name="stopLoss" type="text" style="width: 100%; height: 100%;"/>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">止盈</td>
							<td align="center">
								<input id="stopProfit" name="stopProfit" type="text" style="width: 100%; height: 100%;"/>
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
									<option>15M</option>
									<option>30M</option>
									<option>1H</option>
									<option>4H</option>
									<option>1D</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">预测方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
			           			<select id="predictSide" name="predictSide" style="width: 100%; height: 100%;">
									<option>up</option>
									<option>down</option>
								</select>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">实际方向</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
			           			<select id="actualSide" name="actualSide" style="width: 100%; height: 100%;">
									<option>up</option>
									<option>down</option>
								</select>
							</td>
							<td width="10%" style="border-right:1px solid grey;" align="center">盈亏</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">
								<input id="gain" name="gain" type="text" style="width: 100%; height: 100%;"/>
							</td>
			           		<td width="10%" style="border-right:1px solid grey;" align="center">操作评分</td>
			           		<td align="center">
								<input id="operateScore" name="operateScore" type="text" style="width: 100%; height: 100%;"/>
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
			           		<td width="25%" style="border-right:1px solid grey;" align="center"><input id="openTime" name="openTime" type="text"  class="Wdate" style="width: 100%; height: 100%;" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" /></td>
           					<td width="25%" style="border-right:1px solid grey;" align="center">平仓时间</td>
			           		<td align="center"><input id="closeTime" name="closeTime" type="text"  class="Wdate" style="width: 100%; height: 100%;" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" /></td>
           				</tr>
           			</table>
				</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">交易计划</td>
			           		<td align="left"><input id="plan" name="plan" type="text" style="width: 100%; height: 100%;"/></td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">操作详情</td>
			           		<td align="left"><input id="operateDetail" name="operateDetail" type="text" style="width: 100%; height: 100%;"/></td>
           				</tr>
           			</table>
           		</td>
           	</tr>
           	<tr>
           		<td>
           			<table width="100%">
           				<tr>
           					<td width="16%" height="50px" style="border-right:1px solid grey;" align="center">交易总结</td>
			           		<td align="left"><input id="introspection" name="introspection" type="text" style="width: 100%; height: 100%;"/></td>
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
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${orderId}" lineType="m15" src="${basePath}/file/imgPage.action"></iframe>
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
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${orderId}" lineType="m30" src="${basePath}/file/imgPage.action"></iframe>
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
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${orderId}" lineType="h1" src="${basePath}/file/imgPage.action"></iframe>
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
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${orderId}" lineType="h4" src="${basePath}/file/imgPage.action"></iframe>
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
			           			<iframe frameborder="0" width="100%" height="100%" orderId="${orderId}" lineType="d1" src="${basePath}/file/imgPage.action"></iframe>
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
