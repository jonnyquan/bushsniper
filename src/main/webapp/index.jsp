<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/bootstrap/css/bootstrap-theme.min.css">
<script src="./resources/js/jquery.js"></script>
<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./resources/css/login.css">
<script type="text/javascript">
<c:if test="${user != null }">
	window.location.href = "./summary/summaryPage.action";
</c:if>
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	
	<div class="container">
	  <div class="header clearfix"></div>
      <div class="jumbotron">
        <form class="form-signin" id="loginForm" action="./user/login.action" method="post">
			<h2 class="form-signin-heading">请登陆</h2>
			<label for="inputEmail" class="sr-only">邮箱</label> 
			<input type="email" name="email" id="email" class="form-control" placeholder="邮箱" required autofocus> 
			<label for="inputPassword" class="sr-only">密码</label> 
			<input type="password" name="password" id="password" class="form-control" placeholder="密码" required>
			<div class="checkbox">
				<label style="float:left"> 
				<input type="checkbox" value="remember-me"> 记住密码
				</label>
				<br>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
		</form>
      </div>
	</div>
</body>
</html>
