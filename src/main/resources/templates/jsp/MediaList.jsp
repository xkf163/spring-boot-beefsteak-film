<%@ page import="xkf.entity.MediaEntry" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MediaList</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="/css/bootstrap-theme.min.css">
	<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="/plugin/datatables/css/dataTables.bootstrap.min.css">
</head>
<body style="margin-top: 15px">

<div class="container-fluid">
	<table class="table table-condensed table-striped table-hover" id="mytables">
		<thead>
		<tr>
			<th>序号</th>
			<th class="col-sm-2"><a href="/media/list">片名</a></th>
			<th class="col-sm-3">他名</th>
			<th class="col-sm-1"><a href="/media/list?year">年代</a></th>
			<th class="col-sm-2">类型</th>
			<th class="col-sm-2">国家/地区</th>
			<th><a href="/media/list?score">评分</a></th>
			<th>磁盘空间</th>
            <th>文件夹？</th>
			<th>IMDB</th>
			<th class="col-sm-1">操作</th>
			<%--<th>多媒体更新时间</th>--%>
			<%--<th>记录更新时间</th>--%>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="mediaEntry" begin="0" varStatus="m" items="${mediaList}">
			<c:choose>
				<c:when test="${mediaEntry.film==null}">
					<tr class="success">
				</c:when>
				<c:otherwise>
					<tr>
				</c:otherwise>
			</c:choose>
                <c:set value="${fn:split(mediaEntry.fullPath,'\\\\')}" var="mediaNames"></c:set>
                <c:set value="${fn:length(mediaNames)-1}" var="mediaIndex"></c:set>
				<td>${m.index+1}</td>
                <td><a href="/media/${mediaEntry.mfid}/show" target="_blank" data-toggle="tooltip" data-placement="top" title="${mediaEntry.fullPath}">${fn:split(mediaNames[mediaIndex],'.')[0]}</a></td>
                <%--<td>${fn:split(mediaNames[mediaIndex],'.')[0]}</td>--%>
				<td>${mediaEntry.film.nameEng}</td>
				<td>${mediaEntry.film.year}</td>
				<td>${mediaEntry.film.genre}</td>
				<td>${mediaEntry.film.country}</td>
				<td>${mediaEntry.film.rating}</td>
				<td>${mediaEntry.diskSize}</td>
                <td>${mediaEntry.whetherFolder}</td>
				<td><a href="/media/${mediaEntry.mfid}/edit" target="_blank">${mediaEntry.film.imdb}</a></td>
				<td><a href="/media/${mediaEntry.mfid}/contact" target="_blank">联</a></td>


				<%--<td><fmt:formatDate type="time" value="${mediaEntry.fileModifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>--%>
				<%--<td><fmt:formatDate type="time" value="${mediaEntry.modifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>--%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>





	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="/js/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="/plugin/datatables/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" charset="utf8" src="/plugin/datatables/js/dataTables.bootstrap.min.js"></script>
	<script type="application/javascript">
		$(document).ready(function() {
			$('#mytables').DataTable({
				"pageLength": 100,
				"lengthMenu": [ [100, 250, 500, -1], [100, 250, 500, "All"] ],
				"language": {
					"sProcessing": "处理中...",
					"sLengthMenu": "显示 _MENU_ 项结果",
					"sZeroRecords": "没有匹配结果",
					"sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
					"sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
					"sInfoFiltered": "(由 _MAX_ 项结果过滤)",
					"sInfoPostFix": "",
					"sSearch": "搜索:",
					"sUrl": "",
					"sEmptyTable": "表中数据为空",
					"sLoadingRecords": "载入中...",
					"sInfoThousands": ",",
					"oPaginate": {
						"sFirst": "首页",
						"sPrevious": "上页",
						"sNext": "下页",
						"sLast": "末页"
					},
					"oAria": {
						"sSortAscending": ": 以升序排列此列",
						"sSortDescending": ": 以降序排列此列"
					}
				},
//				"processing": true,
//				"serverSide": true,
//				"ajax": {
//					"url": "/media/json/list",
//					"type": "POST"
//				},



			});
		});
	</script>
</body>
</html>