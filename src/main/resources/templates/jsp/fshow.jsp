<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>show filmentry</title>
</head>
<body>
	<table>
		<tr>
			<td>片名</td>
			<td>${filmEntry.name}</td>
		</tr>
		<tr>
			<td>音轨</td>
			<td>${filmEntry.soundTrack}</td>
		</tr>
	</table>
</body>
</html>