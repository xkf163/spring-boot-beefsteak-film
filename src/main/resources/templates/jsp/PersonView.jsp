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
<title>PersonShow</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
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
				<%--<li><a href="/film/${film.fid}/show" target="_blank"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;阅读<span class="sr-only">(current)</span></a></li>--%>
				<li><a onclick="save();"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</a></li>
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
<div class="container-fluid"  style="font-family: 'Microsoft YaHei UI';margin:70px 10px">
	<form method="post" action="<%=request.getContextPath()%>/person/${person.pid}/update" role="form" id="myform" class="form-horizontal">

		<%--<div class="form-group">--%>
			<%--<div class="alert alert-info col-sm-7 col-sm-offset-1" role="alert" >${message}</div>--%>
		<%--</div>--%>
		<div class="form-group" style="display: none">
			<label class="col-sm-1 control-label">ID：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="pid" value="${person.pid}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">姓名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="name" value="${person.name}">
			</div>
			<label class="col-sm-1 control-label">英文名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="nameEng"  value="${person.nameEng}">
			</div>
		</div>

		<c:set var="isDisplayD" scope="session" value="none"/>
		<c:set value="${fn:length(personAsDirectors)}" var="asDtorNumber"></c:set>
		<c:if test="${asDtorNumber > 0}">
			<c:set var="isDisplayD" scope="session" value="block"/>
		</c:if>
			<div class="form-group" style="display: ${isDisplayD}">
			<label class="col-sm-1 control-label">导演：</label>
			<div class="col-sm-7">
				<table class="table table-condensed table-striped table-hover">
					<c:forEach var="film" begin="0" varStatus="f" items="${personAsDirectors}">
						<tr>
							<td>
								<div class="media">
									<div class="media-left">
										<a href="#">
											<img class="media-object" src="<%=request.getContextPath()%>/img/imdb/${film.imgPath.split("@")[0]}" width="50px" height="72px" alt="...">
										</a>
									</div>
								</div>
							</td>
							<td>${film.year}</td>
							<td>${film.name}</td>
							<td>${film.nameEng}</td>
							<td>${film.rating}</td>
							<td><a href="/film/${film.fid}/show" target="_blank">${film.imdb}</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<c:set var="isDisplayS" scope="session" value="none"/>
		<c:set value="${fn:length(personAsStars)}" var="asStarNumber"></c:set>
		<c:if test="${asStarNumber > 0}">
			<c:set var="isDisplayS" scope="session" value="block"/>
		</c:if>
		<div class="form-group" style="display: ${isDisplayS}">
			<label class="col-sm-1 control-label">主演：</label>
			<div class="col-sm-7">
				<table class="table table-condensed table-striped table-hover">
					<c:forEach var="film" begin="0" varStatus="f" items="${personAsStars}">
						<tr>
							<td>
								<div class="media">
									<div class="media-left">
										<a href="#">
											<img class="media-object" src="<%=request.getContextPath()%>/img/imdb/${film.imgPath.split("@")[0]}" width="50px" height="72px" alt="...">
										</a>
									</div>
								</div>
							</td>
							<td>${film.year}</td>
							<td>${film.name}</td>
							<td>${film.nameEng}</td>
							<td>${film.rating}</td>
							<td><a href="/film/${film.fid}/edit" target="_blank">${film.imdb}</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<%--<div class="form-group">--%>
			<%--<label class="col-sm-1 control-label">导演：</label>--%>
			<%--<div class="col-sm-7">--%>
				<%--&lt;%&ndash;<textarea rows="5" name="filmsAsDirector" class="form-control">&ndash;%&gt;--%>

				<%--<table class="table table-condensed table-striped table-hover">--%>
					<%--<c:forEach var="film" begin="0" varStatus="f" items="${person.filmsAsDirector}">--%>
					<%--<tr>--%>
						<%--<td>${film.year}</td>--%>
						<%--<td>${film.name}</td>--%>
						<%--<td>${film.nameEng}</td>--%>
						<%--<td>${film.rating}</td>--%>
						<%--<td><a href="/film/${film.fid}/show" target="_blank">${film.imdb}</a></td>--%>
					<%--</tr>--%>
					<%--</c:forEach>--%>
				<%--</table>--%>

				<%--&lt;%&ndash;</textarea>&ndash;%&gt;--%>
			<%--</div>--%>
		<%--</div>--%>
		<%--<div class="form-group">--%>
			<%--<label class="col-sm-1 control-label">演员：</label>--%>
			<%--<div class="col-sm-7">--%>
				<%--&lt;%&ndash;<textarea rows="8" name="artist" class="form-control">${person.artist}</textarea>&ndash;%&gt;--%>
					<%--<table class="table table-condensed table-striped table-hover">--%>
						<%--<c:forEach var="film" begin="0" varStatus="f" items="${person.filmsAsActor}">--%>
							<%--<tr>--%>
								<%--<td>${film.year}</td>--%>
								<%--<td>${film.name}</td>--%>
								<%--<td>${film.nameEng}</td>--%>
								<%--<td>${film.rating}</td>--%>
								<%--<td><a href="/film/${film.fid}/show" target="_blank">${film.imdb}</a></td>--%>
							<%--</tr>--%>
						<%--</c:forEach>--%>
					<%--</table>--%>
			<%--</div>--%>
		<%--</div>--%>



	</form>
</div>




	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

	<script type="application/javascript">
		function save() {
			document.getElementById('myform').submit();
		}
	</script>

</body>
</html>