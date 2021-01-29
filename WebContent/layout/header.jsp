<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Colorlib">
<meta name="description" content="#">
<meta name="keywords" content="#">
<!-- Page Title -->
<title>Listing &amp; Directory Website Template</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- JS파일 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
<!-- Simple line Icon -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/simple-line-icons.css">

<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/magnific-popup.css">
<!-- Themify Icon -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/themify-icons.css">
<!-- Hover Effects -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/set1.css">
<!-- Main CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<!-- Swipper Slider -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/m-swiper.css">
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 마테리얼 아이콘 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 카카오지도APi -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=12353cd710be446e6ea6b13e46d6a960"></script>
<!-- summer editor -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

</head>



<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
											<li><button class="btn default" ><i class="large material-icons text-white md-48 m-circle " >account_circle</i></button></li>
										</ul>
									</c:when>
									<c:otherwise>
										<ul class="navbar-nav">
											<li class="nav-item active"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/user?cmd=joinForm"> 회원가입</a></li>
											<li class="nav-item active"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/board?cmd=allList">맛집리스트</a></li>
											<li class="nav-item"><a class="nav-link font-weight-bold" href="<%=request.getContextPath()%>/user?cmd=loginForm">로그인</a></li>
											<li><button class="btn default" ><i class="large material-icons text-white md-48 m-circle " >account_circle</i></button></li>
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
	
