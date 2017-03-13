<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>影库</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
</head>
<body>

<div class="container-fluid">
	<table class="table table-condensed table-striped table-hover">
		<thead>
		<tr>
			<th>序号</th>
			<th>片名</th>
			<th>年代</th>
			<th>音轨</th>
			<th>视频</th>
			<th>占用空间</th>
			<th>小组</th>
			<th>多媒体更新时间</th>
			<th>记录更新时间</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="filmEntry" begin="0" varStatus="fe" items="${fmList}">
			<tr>
				<td>${fe.index+1}</td>
				<td>${filmEntry.name}</td>
				<td>${filmEntry.mediaYear}</td>
				<td>${filmEntry.soundTrack}</td>
				<td>${filmEntry.videoRatio}</td>
				<td>${filmEntry.diskSize}G</td>
				<td>${filmEntry.mediaTeam}</td>
				<td><fmt:formatDate type="time" value="${filmEntry.fileModifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
				<td><fmt:formatDate type="time" value="${filmEntry.modifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>




	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>