<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<script src="${basePath}/resources/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var lineType = self.frameElement.getAttribute('lineType');
	$("#lineType").attr("value",lineType);
	var orderId = self.frameElement.getAttribute('orderId');
	$("#orderId").attr("value",orderId);
	<c:if test="${imgPath != null}">
		$(self.frameElement).prev().attr("value","${imgPath}");
	</c:if>
});
</script>
<form id="uploadForm" name="uploadForm" action="${basePath}/file/upload.action" method="post" enctype="multipart/form-data">
	<input id="lineType" name="lineType" type="hidden"  value="" />
	<input id="orderId" name="orderId" type="hidden"  value="" />
	<input type="file" id="file" name="file">
	<input type="submit" value="上传">
</form>
<c:if test="${imgPath != null}">
	<img alt="${imgPath}" src="${basePath}/resources/img/${imgPath}">
</c:if>