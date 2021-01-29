<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cos 블로그</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>


	<!--============================= HEADER =============================-->
	<div class="nav-menu" id="header">

		<div class="bg transition">
			<div class="container-fluid fixed">
				<div class="row">
					<div class="col-md-12">
						<nav class="navbar navbar-expand-lg navbar-light">
							<a class="navbar-brand" href="<%=request.getContextPath()%>/board?cmd=mainList"> <img src="<%=request.getContextPath()%>/images/logo.png" alt="img13" style="width: 100px; height: 40px;" />

							</a>
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
								<span class="icon-menu"></span>
							</button>
							<div class="collapse navbar-collapse justify-content-end" id="SearchForm">
								<c:choose>
									<c:when test="${sessionScope.principal != null}">
										<ul class="navbar-nav">
											<li class="nav-item active"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/user?cmd=updateForm"> 회원정보</a></li>
											<li class="nav-item active"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/board?cmd=allList">맛집리스트</a></li>
											<li class="nav-item"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/user?cmd=logout">로그아웃</a></li>
											<li><i class="large material-icons text-white md-48 m-circle">account_circle</i></li>
										</ul>
									</c:when>
									<c:otherwise>
										<ul class="navbar-nav">
											<li class="nav-item active"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/user?cmd=joinForm"> 회원가입</a></li>
											<li class="nav-item active"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/board?cmd=allList">맛집리스트</a></li>
											<li class="nav-item"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/user?cmd=loginForm">로그인</a></li>
											<li><i class="large material-icons text-white md-48 m-circle">account_circle</i></li>
										</ul>
									</c:otherwise>
								</c:choose>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!--//END HEADER -->

	<div class="container" style="margin-top: 100px;">

		<form action="/mangoplate/review?cmd=update" method="POST">
			<input type="hidden" name="userId" value="${sessionScope.principal.id}" /> <input type="hidden" name="boardId" value="${dto.boardId}" /> <label for="title"><h3 class="font-weight-bold text-primary">${boardTitle}<small class="text-dark">에 대한 솔직한 리뷰를 써주세요.</small>
				</h3></label>
			<div class="form-group">
				<label for="title">Title:</label> <input type="text" class="form-control" value="${dto.title}"  name="title">
				<input type="hidden" name="id" value="${dto.id}" />
			</div>

			<div class="form-group">
				<textarea id="summernote" class="form-control" rows="5" name="content">${dto.content}</textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn default">리뷰 수정</button>
			</div>
		</form>

	</div>


	<script>
		$('#summernote').summernote({
			placeholder : '글을 쓰세요.',
			tabsize : 2,
			height : 300
		});
	</script>
</body>
</html>
