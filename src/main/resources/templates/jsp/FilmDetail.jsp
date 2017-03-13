<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FilmDetail</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<style type="text/css">
	p {
		border: #52abff 1px solid;
		padding-left: 4px;
	}
</style>

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
			<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-king"></span></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/film/${film.fid}/edit"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;编辑<span class="sr-only">(current)</span></a></li>
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
<c:set value="${fn:split(film.imgPath, '@')}" var="imgs"></c:set>
<div class="container-fluid" style="font-family: 'Microsoft YaHei UI';margin:70px 10px">
	<div class = "container">
		<div class="form-group">
			<div class="alert alert-success col-sm-7 col-sm-offset-1" role="alert">${difftime}</div>
		</div>
		<div class="form-group">
			<c:forEach var="img" begin="0" items="${imgs}">
				<div class="col-sm-2">
					<img class="img-rounded" src="<%=request.getContextPath()%>/img/imdb/${img}" style="height: 150px" >
				</div>
			</c:forEach>
		</div>
	</div>
	<form method="post" action="<%=request.getContextPath()%>/film/${film.fid}/update" role="form" class="form-horizontal">
		<div class="form-group" style="display: none">
			<label class="col-sm-1 control-label">ID：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="fid" value="${film.fid}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">
					片名：
			</label>
			<div class="col-sm-3">
				<p class="form-control-static">${film.name}</p>
			</div>
			<label class="col-sm-1 control-label">
				英文名：
			</label>
			<div class="col-sm-3">
				<p class="form-control-static">${film.nameEng}</p>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">
					所有片名：
			</label>
			<div class="col-sm-7">
				<p class="form-control-static">${film.nameAll}</p>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">类型：</label>
			<div class="col-sm-7">
				<p class="form-control-static">${film.genre}</p>
			</div>
		</div>
		<div class="form-group">
            <label class="col-sm-1 control-label">国家/地区：</label>
            <div class="col-sm-3">
				<p class="form-control-static">${film.country}</p>
            </div>
			<label class="col-sm-1 control-label">语言：</label>
			<div class="col-sm-3">
				<p class="form-control-static">${film.language}</p>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">评分：</label>
			<div class="col-sm-1">
				<p class="form-control-static">${film.rating}</p>
			</div>
			<label class="col-sm-1 control-label">年代：</label>
			<div class="col-sm-1">
				<p class="form-control-static">${film.year}</p>
			</div>
			<label class="col-sm-1 control-label"><a  target="_blank" href="http://www.imdb.com/title/${film.imdb}">IMDB</a>：</label>
			<div class="col-sm-1">
				<p class="form-control-static"><a  target="_blank" href="http://www.imdb.com/title/${film.imdb}">${film.imdb}</a></p>
			</div>
			<label class="col-sm-1 control-label"><a  target="_blank" href="http://movie.douban.com/subject/${film.douban}/">豆瓣</a>：</label>
			<div class="col-sm-1">
				<p class="form-control-static"><a  target="_blank" href="http://movie.douban.com/subject/${film.douban}/">${film.douban}</a></p>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-1 control-label">导演：</label>
			<div class="col-sm-3">
				<%--<textarea rows="3" name="directors" class="form-control">${film.directors}</textarea>--%>
					<table class="table table-condensed table-striped table-hover">
						<c:forEach var="human" begin="0" varStatus="f" items="${film.directors}">
						<tr>
							<td><a href="/person/${human.pid}/edit" target="_blank">${human.name}</a></td>
							<td>${human.nameEng}</td>
						</tr>
						</c:forEach>
					</table>
			</div>
		<%--</div>--%>
		<%--<div class="form-group">--%>
			<label class="col-sm-1 control-label">演员：</label>
			<div class="col-sm-3">
				<%--<textarea rows="8" name="stars" class="form-control">${film.stars}</textarea>--%>
					<table class="table table-condensed table-striped table-hover">
						<c:forEach var="human" begin="0" varStatus="f" items="${film.stars}">
							<tr>
								<td><a href="/person/${human.pid}/edit" target="_blank">${human.name}</a></td>
								<td>${human.nameEng}</td>
							</tr>
						</c:forEach>
					</table>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">简介：</label>
			<div class="col-sm-7">
				<%--<textarea rows="8" name="storyline" class="form-control">${film.storyline}</textarea>--%>
				${film.storyline}
			</div>
		</div>

	</form>
</div>




	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>