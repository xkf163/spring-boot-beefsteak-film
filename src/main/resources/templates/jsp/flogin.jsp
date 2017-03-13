<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>登录</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</head>
<body>
	<form role="form">
		<div class="form-group">
			<label for="exampleInputEmail1">邮箱：</label>
			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="请输入您的邮箱地址">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">密码</label>
			<input type="password" class="form-control" id="exampleInputPassword1" placeholder="请输入您的邮箱密码">
		</div>
		<div class="checkbox">
			<label>
				<input type="checkbox"> 记住密码
			</label>
		</div>
		<button type="submit" class="btn btn-default">进入邮箱</button>
	</form>
</body>
</html>