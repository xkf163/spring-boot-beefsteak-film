<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>影库PerosnList</title>
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
			<th width="10px">序号</th>
			<th class="col-sm-4">姓名</th>
			<th class="col-sm-4">英文名</th>
			<th>身份</th>

			<%--<th>类型</th>--%>
			<%--<th>国家/地区</th>--%>
			<%--<th>评分</th>--%>
			<%--<th>ID</th>--%>
			<%--<th>多媒体更新时间</th>--%>
			<%--<th>记录更新时间</th>--%>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="person" begin="0" varStatus="p" items="${personList}">
			<tr>
				<td>${p.index+1}</td>
				<%--<td>${person.name}</td>--%>
				<td><a href="/person/${person[0]}/show" target="_blank">${person[1]}</a></td>
				<td>${person[2]}</td>
				<td>${person[3]}</td>

				<%--<td>${filmEntry.type}</td>--%>
				<%--<td>${filmEntry.area}</td>--%>
				<%--<td>${filmEntry.imdbgrade}</td>--%>




				<%--<td><fmt:formatDate type="time" value="${filmEntry.fileModifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>--%>
				<%--<td><fmt:formatDate type="time" value="${filmEntry.modifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>--%>
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