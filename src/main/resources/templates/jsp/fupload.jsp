<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Upload file</title>
</head>
<body>
	<form enctype="multipart/form-data" method="post" action="/f/us">
		<input type="file" name="file"/>
		<input type="submit"/>
	</form>
</body>
</html>