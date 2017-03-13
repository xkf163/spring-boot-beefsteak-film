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
<title>MediaErrorList</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="/plugin/datatables/css/dataTables.bootstrap.min.css">
</head>
<body style="margin-top: 15px">

<div class="container-fluid">
	<table class="table table-condensed table-striped table-hover" id="mytables">
		<thead>
		<tr>
			<th>序号</th>
			<th class="col-sm-2">片名</th>
			<th class="col-sm-1">他名</th>
			<th>导演</th>
			<th class="col-sm-2">演员</th>
			<th class="col-sm-2">国家/地区</th>
			<th>IMDB</th>
			<th>类型</th>
            <th>评分</th>
			<th>年代</th>
			<th class="col-sm-1">操作</th>
			<%--<th>多媒体更新时间</th>--%>
			<%--<th>记录更新时间</th>--%>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="mediaEntry" begin="0" varStatus="m" items="${mediaList}">
				<td><a href="#" data-toggle="tooltip" data-placement="top" title="${mediaEntry.info}">${m.index+1}</a></td>
                <td><a href="${mediaEntry.tid}" target="_blank">${mediaEntry.name}</a></td>
			    <td><a href="${mediaEntry.tid}" target="_blank">${mediaEntry.oriname}</a></td>
                <%--<td>${fn:split(mediaNames[mediaIndex],'.')[0]}</td>--%>
			    <td>${mediaEntry.director}</td>
				<td>${mediaEntry.artist}</td>
				<td>${mediaEntry.area}</td>
				<td><a href="${mediaEntry.tid}" target="_blank">${mediaEntry.imdbno}</a> </td>
				<td>${mediaEntry.type}</td>
				<td>${mediaEntry.imdbgrade}</td>
				<td>${mediaEntry.year}</td>


				<td><a href="/media/error/${mediaEntry.id}/delete">删</a></td>


				<%--<td><fmt:formatDate type="time" value="${mediaEntry.fileModifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>--%>
				<%--<td><fmt:formatDate type="time" value="${mediaEntry.modifiedDate}" pattern="yyyy-MM-dd hh:mm:ss" /></td>--%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>





	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
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