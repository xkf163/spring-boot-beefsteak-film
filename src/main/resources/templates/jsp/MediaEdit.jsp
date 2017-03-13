<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MediaEdit</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="/css/bootstrap-theme.min.css">
</head>

<body>

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
			<a class="navbar-brand" href="/media/list" target="_blank"><span class="glyphicon glyphicon-film"></span></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<%--<li><a href="/media/list" target="_blank"><span class="glyphicon glyphicon-list"></span>&nbsp;列表</a></li>--%>
				<li><a href="/media/${mediaEntry.mfid}/show"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;阅读<span class="sr-only">(current)</span></a></li>
				<%--<li><a onclick="save();"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</a></li>--%>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cutlery"></span>&nbsp;爬虫<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a onclick="contact();">&nbsp;关联</a></li>
						<li><a href="javascript:void(0)" onclick="gather();return false;">抓取Film</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
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

<div class="container-fluid" style="margin: 70px 10px">
	<form method="get" action="<%=request.getContextPath()%>/media/${mediaEntry.mfid}/contact" id="myform" role="form" class="form-horizontal">
		<div class="form-group">
			<div class="alert alert-info col-sm-7 col-sm-offset-1" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				${mediaEntry.fullPath}
			</div>
			<input type="text" class="form-control" name="fullPath" style="display: none" value="${mediaEntry.fullPath}">
		</div>
		<div class="form-group" style="margin: 0px">
			<div class="alert alert-success col-sm-8" style="padding: 2px;display: none" role="alert">
				<%--<input type="submit" value="更新" class="btn btn-info col-sm-2 col-sm-offset-1">--%>
				<p style="margin: 5px;padding-left: 10px">${message}</p>
			</div>
		</div>
		<div class="form-group" style="display: none">
			<label class="col-sm-1 control-label">ID：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="mfid" value="${mediaEntry.mfid}">
				<input type="text" class="form-control" name="fid" value="${film.fid}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">片名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="name" value="${film.name}">
			</div>
			<label class="col-sm-1 control-label">英文名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="nameEng"  value="${mediaEntry.film.nameEng}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">所有片名：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="nameAll"  value="${mediaEntry.film.nameAll}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">类型：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="genre"  value="${mediaEntry.film.genre}">
			</div>
			<label class="col-sm-1 control-label">年代：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="year"  value="${mediaEntry.film.year}">
			</div>
			<label class="col-sm-1 control-label">分级：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="certificate"  value="${mediaEntry.film.certificate}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">国家/地区：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="country"   value="${mediaEntry.film.country}">
			</div>
			<label class="col-sm-1 control-label">语言：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="language" value="${mediaEntry.film.language}">
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
				<blockquote class="blockquote-reverse"><footer>格式: <cite title="Source Title">中国大陆 125分钟|125分钟(中国大陆)</cite></footer></blockquote>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">评分：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="rating"  value="${mediaEntry.film.rating}">
			</div>

			<label class="col-sm-1 control-label col-sm-offset-2"><a  target="_blank" href="http://www.imdb.com/title/${mediaEntry.film.imdb}">IMDB</a>：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="imdb" value="${mediaEntry.film.imdb}"/>
			</div>
			<label class="col-sm-1 control-label"><a  target="_blank" href="http://movie.douban.com/subject/${mediaEntry.film.douban}/">豆瓣</a>：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="douban" value="${mediaEntry.film.douban}"/>
			</div>

		</div>


		<div class="form-group">
			<label class="col-sm-1 control-label">导演：</label>
			<div class="col-sm-7">
				<textarea rows="${filmdirectorsindex}" name="filmdirectors" class="form-control">${filmdirectors}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">主演：</label>
			<div class="col-sm-7">
				<textarea rows="${filmstarsindex}" name="filmstars" class="form-control">${filmstars}</textarea>
			</div>
		</div>


		<div class="form-group">
			<label class="col-sm-1 control-label">剧情：</label>
			<div class="col-sm-7">
				<textarea rows="8" name="storyline" class="form-control">${mediaEntry.film.storyline}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">花絮：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="titbit" class="form-control">${mediaEntry.film.titbit}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">获奖记录：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="awards" class="form-control">${mediaEntry.film.awards}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">幕后制作：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="memo" class="form-control">${mediaEntry.film.memo}</textarea>
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
				<input type="text" name="gatherUrl" class="form-control" />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default"
						data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="gatherFilm();return false;">
					开始抓取
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
		function contact() {
			document.getElementById('myform').submit();
		}


		function gather() {
			$("input[name='gatherUrl']").val("");
			$("#myModal").modal("show");
		}

		function gatherFilm() {
			var gatherUrl = $("input[name='gatherUrl']").val();
			var mediaId = $("input[name='mfid']").val();
			$.ajax({
				url:"/media/"+mediaId+"/gatherfilm?gatherUrl="+gatherUrl,
				type:"post",
				dataType:"json",
				async:false,
				error:function () {
					alert("error");
				},
				success:function (result) {
					alert(result.msg);
					if(result.filmid!="" && typeof(result.filmid)!=="undefined"){
						window.location.href="/film/"+result.filmid+"/edit";
					}else {
						$('#myModal').modal("hide");
						location.reload();
					}

				}
			});





		}


	</script>

</body>
</html>