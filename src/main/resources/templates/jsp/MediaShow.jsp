<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MediaShow</title>
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
				<li><a href="/film/${mediaEntry.film.fid}/edit"><span class="glyphicon glyphicon-edit"></span>&nbsp;编辑<span class="sr-only">(current)</span></a></li>
				<%--<li><a onclick="save();"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</a></li>--%>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
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
	<form method="post" action="<%=request.getContextPath()%>/media/${mediaEntry.mfid}/update" id="myform" role="form" class="form-horizontal">
		<div class="form-group" style="display: none">
			<label class="col-sm-1 control-label">ID：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="mfid" value="${mediaEntry.mfid}">
			</div>
		</div>
		<div class="form-group">
			<div class="alert alert-info col-sm-7 col-sm-offset-1" role="alert">${mediaEntry.fullPath}</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">片名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="name" value="${mediaEntry.film.name}" readonly>
			</div>
			<label class="col-sm-1 control-label">英文名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="nameEng"  value="${mediaEntry.film.nameEng}" readonly>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">所有片名：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="nameAll"  value="${mediaEntry.film.nameAll}" readonly>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">类型：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="genre"  value="${mediaEntry.film.genre}" readonly>
			</div>
			<label class="col-sm-1 control-label">年代：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="year"  value="${mediaEntry.film.year}" readonly>
			</div>
			<label class="col-sm-1 control-label">分级：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="certificate"  value="${mediaEntry.film.certificate}" readonly>
			</div>
		</div>


		<div class="form-group">
            <label class="col-sm-1 control-label">国家/地区：</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="country"   value="${mediaEntry.film.country}" readonly>
            </div>
			<label class="col-sm-1 control-label">语言：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="language" value="${mediaEntry.film.language}" readonly>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">上映日期：</label>
			<div class="col-sm-3">
				<textarea rows="${releasedateindex}" name="filmreleasedates" class="form-control" readonly>${filmreleasedates}</textarea>
				<blockquote class="blockquote-reverse"><footer>格式: <cite title="Source Title">美国 1985-07-10 | 1985-07-10(美国)</cite></footer></blockquote>
			</div>
			<label class="col-sm-1 control-label">版本片长：</label>
			<div class="col-sm-3">
				<textarea rows="${durationindex}" name="filmdurations" class="form-control" readonly>${filmdurations}</textarea>
				<blockquote class="blockquote-reverse"><footer>格式: <cite title="Source Title">中国大陆 125分钟|125分钟(中国大陆)</cite></footer></blockquote>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">评分：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="rating"  value="${mediaEntry.film.rating}" readonly>
			</div>

			<label class="col-sm-1 control-label col-sm-offset-2"><a  target="_blank" href="http://www.imdb.com/title/${mediaEntry.film.imdb}">IMDB</a>：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="imdb" value="${mediaEntry.film.imdb}" readonly>
			</div>
			<label class="col-sm-1 control-label"><a  target="_blank" href="http://movie.douban.com/subject/${mediaEntry.film.douban}/">豆瓣</a>：</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" name="douban" value="${mediaEntry.film.douban}" readonly>
			</div>

		</div>


		<div class="form-group">
			<label class="col-sm-1 control-label">导演：</label>
			<div class="col-sm-7">
				<table class="table table-condensed table-striped table-hover">
					<c:forEach var="human" begin="0" varStatus="f" items="${mediaEntry.film.directors}">
						<tr>
							<td><a href="/person/${human.pid}/view" target="_blank">${human.name}</a></td>
							<td>${human.nameEng}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">演员：</label>
			<div class="col-sm-7">
				<table class="table table-condensed table-striped table-hover">
					<c:forEach var="human" begin="0" varStatus="f" items="${mediaEntry.film.stars}">
						<tr>
							<td><a href="/person/${human.pid}/view" target="_blank">${human.name}</a></td>
							<td>${human.nameEng}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">剧情：</label>
			<div class="col-sm-7">
				<textarea rows="8" name="storyline" class="form-control" readonly>${mediaEntry.film.storyline}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">花絮：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="titbit" class="form-control" readonly>${mediaEntry.film.titbit}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">获奖记录：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="awards" class="form-control" readonly>${mediaEntry.film.awards}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">幕后制作：</label>
			<div class="col-sm-7">
				<textarea rows="3" name="memo" class="form-control" readonly>${mediaEntry.film.memo}</textarea>
			</div>
		</div>

	</form>
</div>




	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="/js/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="/js/bootstrap.min.js"></script>
	<script type="application/javascript">
		$(function () {
			$("textarea").each(function () {
				var len = $(this).val().length;
				var enterNumber = $(this).val().split("\n").length;
				$(this).attr("rows",Math.floor((len/60)+1)+enterNumber);
			});
		});
	</script>
</body>
</html>