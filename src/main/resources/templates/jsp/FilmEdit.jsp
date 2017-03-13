<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FilmEdit</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="/css/bootstrap-theme.min.css">
</head>
<body >
<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #2e6da4;color: white; "  role="navigation">
	<div class="container" >
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-film"></span></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/film/${film.fid}/detail"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;阅读<span class="sr-only">(current)</span></a></li>
				<li><a onclick="save();"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cutlery"></span>&nbsp;爬虫<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a onclick="logo();return false;" href="javascript:void(0)">抓取图片</a></li>
						<li role="separator" class="divider">IMDB</li>
						<li><a href="#">分级</a></li>
						<li><a href="#">海报</a></li>
						<li role="separator" class="divider">TLF</li>
						<li><a onclick="logotlf();return false;" href="javascript:void(0)">抓取海报[TLF]</a></li>
						<li><a onclick="logotlfdel();return false;" href="javascript:void(0)">擦除海报</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Link</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul>
				</li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container-fluid" style="font-family: 'Microsoft YaHei UI';margin:70px 10px">
	<form method="post" action="<%=request.getContextPath()%>/film/${film.fid}/update" role="form" id="myform" class="form-horizontal">
		<div class="form-group" style="margin: 0px">
			<div class="alert alert-success col-sm-7 col-sm-offset-1" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<p style="margin: 2px;padding-left: 10px">${message}</p>
				<p style="margin: 2px;padding-left: 10px">${difftime}</p>
			</div>
			<div class="alert alert-info col-sm-7 col-sm-offset-1" role="alert">
				<div class="media">
					<div class="media-left">
						<a href="#">
							<img class="media-object" src="<%=request.getContextPath()%>/img/imdb/${imgpath}" width="100px" height="143" alt="${imgpath}">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">${film.name}</h4>
						<p style="margin: 5px;padding-left: 10px"><a href="${film.gatherUrl}" target="_blank">${film.gatherUrl}</a></p>
						<p><input type="text" class="form-control" name="gatherUrl" value="${film.gatherUrl}"></p>
						<p>${film.storyline}</p>
					</div>
				</div>

			</div>
		</div>
		<div class="form-group" style="display: none">
			<input type="text" class="form-control" name="imgPath" value="${film.imgPath}">
			<input type="text" class="form-control" name="fid" value="${film.fid}">
		</div>

		<div class="form-group">
			<label class="col-sm-1 control-label">片名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="name" value="${film.name}">
			</div>
			<label class="col-sm-1 control-label">英文名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="nameEng"  value="${film.nameEng}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">所有片名：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="nameAll"  value="${film.nameAll}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">类型：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="genre"  value="${film.genre}">
			</div>
			<label class="col-sm-1 control-label">年代：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="year"  value="${film.year}">
			</div>
			<label class="col-sm-1 control-label">分级：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="certificate"  value="${film.certificate}">
			</div>
		</div>
		<div class="form-group">
            <label class="col-sm-1 control-label">国家/地区：</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="country"   value="${film.country}">
            </div>
			<label class="col-sm-1 control-label">语言：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="language" value="${film.language}">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-1 control-label">上映日期：</label>
			<div class="col-sm-3">
				<textarea rows="${releasedateindex}" name="filmreleasedates" class="form-control">${filmreleasedates}</textarea>
				<blockquote class="blockquote-reverse"><footer>格式: <cite title="Source Title">美国 1985-07-10 | 1985-07-10(美国)</cite></footer></blockquote>
			</div>
			<label class="col-sm-1 control-label">版本片长：</label>
			<div class="col-sm-3">
				<textarea rows="${durationindex}" name="filmdurations" class="form-control">${filmdurations}</textarea>
				<blockquote class="blockquote-reverse"><footer>格式: <cite title="Source Title"><small>中国大陆 125分钟|125分钟(中国大陆)</small></cite></footer></blockquote>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">评分：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="rating"  value="${film.rating}">
			</div>

			<label class="col-sm-1 control-label"><a  target="_blank" href="http://www.imdb.com/title/${film.imdb}">IMDB</a>：</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="imdb" value="${film.imdb}"/>
			</div>
			<label class="col-sm-1 control-label"><a  target="_blank" href="http://movie.douban.com/subject/${film.douban}/">豆瓣</a>：</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="douban" value="${film.douban}"/>
			</div>

		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">导演：</label>
			<div class="col-sm-3">
				<textarea rows="${filmdirectorsindex}" name="filmdirectors" class="form-control">${filmdirectors}</textarea>
			</div>
			<label class="col-sm-1 control-label">主演：</label>
			<div class="col-sm-3">
				<textarea rows="${filmstarsindex}" name="filmstars" class="form-control">${filmstars}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">剧情：</label>
			<div class="col-sm-7">
				<textarea rows="8" name="storyline" class="form-control">${film.storyline}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">花絮：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="titbit" class="form-control">${film.titbit}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">获奖记录：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="awards" class="form-control">${film.awards}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">幕后制作：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="memo" class="form-control">${film.memo}</textarea>
			</div>
		</div>

	</form>
</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	 aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close"
						data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body">
				<input type="text" name="imgSrc" class="form-control" />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default"
						data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="logosub()">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>


	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="/js/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="/js/bootstrap.min.js"></script>

	<script type="application/javascript">
		$(function () {
			$("textarea").each(function () {
				var name = $(this).attr("name");
				if (name != "filmdirectors" && name != "filmstars") {
					var len = $(this).val().length;
					var enterNumber = $(this).val().split("\n").length;
					$(this).attr("rows", Math.floor((len / 60) + 1) + enterNumber);
				}
			});

			$("div").on("focus","textarea",function () {
				if($(this).val()==""){
					$(this).attr("rows",2);
				}else{
					var len = $(this).val().length;
					var enterNumber = $(this).val().split("\n").length;
					$(this).attr("rows", Math.floor(len / 40) + 2 +enterNumber);
				}
			}).on("keyup","textarea",function () {
				var len = $(this).val().length;
				var enterNumber = $(this).val().split("\n").length;
				$(this).attr("rows", Math.floor(len / 40) + 1 + enterNumber);
			}).on("blur","textarea",function () {
				if($(this).val()=="") {
					$(this).attr("rows", 2);
				}
			});


		});


		function appendRow() {
			var tr = $("#tabledirectors tr:last").clone();
			tr.insertBefore("#tabledirectors tr:last");
			$("#tabledirectors tr:last").each(function () {
				$(this).find("input").each(function () {
					$(this).val("");
				});
			});
		}
		
		function save() {
			document.getElementById('myform').submit();
		}


		function logotlf() {
			var tlfUrl= $("input[name='gatherUrl']").val();
			var fid = $("input[name='fid']").val();
			var para = "&gatherurl="+tlfUrl+"&fid="+fid;
//			alert(para);
			$.ajax({
				type:"get",
				url:"/film/json/updatelogofromtlf?"+para,
				dataType:"json",
				async:false,
				error:function () {
					alert("error");
				},
				success:function (result) {
					alert(result.msg);
				}
			});
			location.reload();
		}

		function logotlfdel() {
			var fid = $("input[name='fid']").val();
			var para = "&fid="+fid;
//			alert(para);
			$.ajax({
				type:"post",
				url:"/film/json/deletelogo?"+para,
				dataType:"json",
				async:false,
				error:function () {
					alert("error");
				},
				success:function (result) {
					alert(result.msg);
				}
			});
			location.reload();
		}

		function logo() {
			$('#myModal').modal("show");
		}

		function logosub() {
//			$("#myModal .modal-body > form").attr("action", "index.php?id=" + id);
			var imgSrc = $('#myModal input[name="imgSrc"]').val();
			var fid = $("input[name='fid']").val();
			$('#myModal input[name="imgSrc"]').val("");
			var para = "&imgSrc="+imgSrc+"&fid="+fid;
//			alert(para);
			$.ajax({
				type:"post",
				url:"/film/json/updatelogobyurl?"+para,
				dataType:"json",
				async:false,
				error:function () {
					alert("error");
				},
				success:function (result) {
					alert(result.msg);
				}
			});

			$('#myModal').modal("hide");
			location.reload();
		}
	</script>

</body>
</html>