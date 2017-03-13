<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FilmList</title>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="/css/bootstrap-theme.min.css">
	<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="/plugin/datatables/css/dataTables.bootstrap.min.css">
</head>
<body style="margin-top: 20px;margin-bottom: 30px">

<div class="container-fluid" style="font-family: 'Microsoft YaHei UI'">

	<div>
		<input type="text" id="level1">
		<input type="button" onclick="search1()"  value="查询">
	</div>

	<table class="table table-condensed table-striped table-hover" id="mytables">
		<thead>
		<tr>
			<th style="width: 5px">序号</th>
			<th class="col-sm-2">片名</th>
			<th >他名</th>
			<th style="width: 15px">年代</th>
			<th class="col-sm-2">类型</th>
			<th>国家/地区</th>
			<th>评分</th>
			<th>IMDB</th>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<th>序号</th>
			<th>片名</th>
			<th>他名</th>
			<th>年代</th>
			<th>类型</th>
			<th>国家/地区</th>
			<th>评分</th>
			<th>IMDB</th>
		</tr>
		</tfoot>
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
		table = $('#mytables').DataTable({
			"pagingType": "simple_numbers",//设置分页控件的模式
			searching: false,//屏蔽datatales的查询框
//			aLengthMenu:[10],//设置一页展示10条记录
//			"bLengthChange": false,//屏蔽tables的一页展示多少条记录的下拉列表
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
				},
			},
			"ajax": {
				"url": "http://localhost:8080/films",
				"type": "POST",
				"dataSrc": "aaData",
				"data": function ( d ) {
					var level1 = $('#level1').val();
					//添加额外的参数传给服务器
					d.extra_search = level1;

				}
			},
			"columnDefs": [
				{
					// The `data` parameter refers to the data for the cell (defined by the
					// `data` option, which defaults to the column being worked with, in
					// this case `data: 0`.
					"render": function ( data, type, row ) {
						return "<a href='"+ row [ 0 ] +"/edit' target='_blank'>"+ data +"</a>";
					},
					"targets": 1
				}
			]
		});
	});

	function search1()
	{
		table.ajax.reload();
	}

</script>

</body>
</html>