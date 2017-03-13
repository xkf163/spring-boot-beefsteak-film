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
<title>MediaList2</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="/css/bootstrap-theme.min.css">
	<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="/plugin/datatables/css/dataTables.bootstrap.min.css">
</head>
<body style="margin-top: 25px;margin-bottom: 30px">

<div class="container-fluid">
	<table class="table table-condensed table-striped table-hover" id="mytables">
		<thead>
			<tr>
				<th>序号</th>
				<th class="col-sm-2">片名</th>
				<th class="col-sm-3">他名</th>
				<th class="col-sm-1">年代</th>
				<th class="col-sm-2">类型</th>
				<th class="col-sm-2">国家/地区</th>
				<th>评分</th>
				<th>磁盘空间</th>
				<th>文件夹？</th>
				<th>IMDB</th>
				<th class="col-sm-1">操作</th>
				<%--<th>多媒体更新时间</th>--%>
				<%--<th>记录更新时间</th>--%>
			</tr>
		</thead>

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
				"serverSide": true,//分页，取数据等等的都放到服务端去
				"processing": true,//载入数据的时候是否显示“载入中”
				"ordering": false,//排序操作在服务端进行，所以可以关了。
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
				"ajax": {
					"url": "/media/json/list2",
					"type": "POST",
					"dataSrc": "aaData",
					"data": function ( d ) {
						//var level1 = $('#level1').val();
						//添加额外的参数传给服务器
						d.extra_search = "xkfParams";
					}
				},
				"columnDefs": [
					{
						// The `data` parameter refers to the data for the cell (defined by the
						// `data` option, which defaults to the column being worked with, in
						// this case `data: 0`.
						"render": function ( data, type, row ) {
							var m = data.split("\\");
							var l = m.length;
							return "<a href='"+ row [ 0 ] +"/edit' target='_blank'>"+ m[ l -1 ] +"</a>";
						},
						"targets": 1
					},
					{
						// The `data` parameter refers to the data for the cell (defined by the
						// `data` option, which defaults to the column being worked with, in
						// this case `data: 0`.
						"render": function ( data, type, row ) {
							return "<a href='/media/"+row [ 0 ]+"/contact' target='_blank'>联</a>";
						},
						"targets": 10
					}
				]




			});
		});
	</script>
</body>
</html>