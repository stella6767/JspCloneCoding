<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- SLIDER -->
<section class="slider d-flex align-items-center container-fluid">
	<!-- <img src="<%= request.getContextPath() %>/images/slider.jpg" class="img-box" alt="#"> -->
	<div class="container">
		<div class="row d-flex justify-content-center" style="margin-bottom: 100px;">
			<div class="col-md-12">
				<div class="slider-title_box">
					<div class="row">
						<div class="col-md-12">
							<div class="slider-content_wrap">
								<h3>솔직한 리뷰, 믿을 수 있는 평점!</h3>
								<h3>망고플레이트</h3>
							</div>
						</div>
					</div>
					<div class="row d-flex justify-content-center">
						<div class="col-md-10">
							<form action="/mangoplate/board?cmd=search" method="POST" class="form-wrap mt-4">
								<div class="btn-group " role="group" aria-label="Basic example">
									<input type="text" placeholder="지역, 식당 또는 음식" class="btn-group1" name="keyword" style="outline: none;"> <i class="material-icons">search</i>
									<button type="submit" class="btn-form">검색</button>
								</div>
							</form>

						</div>
					</div>
				</div>

			</div>

		</div>
		<div class="slider-link d-flex justify-content-between" style="margin-bottom: -100px;">
			<div>
				<img src="<%=request.getContextPath()%>/images/EAT딜.png" alt="img13" style="width: 300px; height: 50px;" />
			</div>
			<div>
				<img src="<%=request.getContextPath()%>/images/AppStore.png" alt="img13" style="" />
			</div>
		</div>
	</div>
</section>
<!--// SLIDER -->


<!--============================= FIND MATZIP LIST =============================-->
<section class="main-block ">
	<div class="container">
		<div class="row">
			<h5 class="font-weight-bold" style="color: #753D12;">메뉴별 인기맛집</h5>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&mkeyword=만두&cnt=10">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu1.jpg" class="img-box" alt="mandu" />
								<figcaption>
									<h5>만두 맛집 베스트 10곳</h5>
									<p>"만두 맛집을 소개해드릴게요!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&mkeyword=밀면&cnt=5">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu2.jpg" class="img-box" alt="img13" />
								<figcaption>
									<h5>밀면 맛집 베스트 5곳</h5>
									<p>"시원한 밀면을 빼먹으면 섭하죠!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&mkeyword=일식&cnt=6">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu3.jpg" class="img-box" alt="img13" />
								<figcaption>
									<h5>일식 맛집 베스트 6곳</h5>
									<p>"깔끔하고 고풍스러운 일식집!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&mkeyword=커피&cnt=15">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu4.jpg" class="img-box" alt="img13" />
								<figcaption>
									<h5>커피 맛집 베스트 15곳</h5>
									<p>"오늘 하루도 찐한 커피와 함께!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&mkeyword=백숙&cnt=6">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu5.jpg" class="img-box" alt="img13" />
								<figcaption>
									<h5>백숙 맛집 베스트 6곳</h5>
									<p>"든든하게 한끼로 백숙 어떠세요?"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&mkeyword=해산물&cnt=8">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu6.jpg" class="img-box" alt="img13" />
								<figcaption>
									<h5>해산물 맛집 베스트 8곳</h5>
									<p>"역시 부산의 자랑은 해산물!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
			</div>

		</div>


	</div>
</section>
<!--//END MATZIP LIST -->






<!--============================= BOOKING =============================-->
<section class="border border-bottom-0 border-right-0 border-left-0">
	<div class="container  m-swiper-container  ">
		<div class="row mt-5">
			<h5 class="font-weight-bold" style="color: #753D12;">지역별 인기맛집</h5>
		</div>
		<!-- Swiper -->
		<div class="swiper-container row  ">
			<div class="swiper-wrapper">

				<div class="swiper-slide">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&gkeyword=강서구&cnt=13">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/gugun1.jpg" class="img-box2" />
								<figcaption>
									<h5 class="m-line">강서구   맛집 베스트 <br/>13곳</h5>
									<p>"맛집천국 강서구로 놀러오세요!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&gkeyword=금정구&cnt=14">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/gugun2.jpg" class="img-box2" />
								<figcaption>
									<h5 class="m-line">금정구 맛집 베스트  <br/>14곳</h5>
									<p>"금정구 먹방로드 이것만 보세요!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&gkeyword=연제구&cnt=10">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/gugun3.jpg" class="img-box2" />
								<figcaption>
									<h5 class="m-line">연제구 맛집 베스트  <br/>10곳</h5>
									<p>"연제구 맛집의 기준은 여기!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>



				<div class="swiper-slide">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&gkeyword=부산진구&cnt=13">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/gugun4.jpg" class="img-box2" />
								<figcaption>
									<h5 class="m-line">부산진구 맛집 베스트  <br/>13곳</h5>
									<p>"부산진구 여행을 계획중이라면?"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&gkeyword=수영구&cnt=12">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/gugun5.jpg" class="img-box2" />
								<figcaption>
									<h5 class="m-line">수영구 맛집 베스트 <br/> 12곳</h5>
									<p>"좋은 날 좋은 곳에서 먹어요!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<a href="<%=request.getContextPath()%>/board?cmd=subAllList&gkeyword=사상구&cnt=11">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/gugun6.jpg" class="img-box2" />
								<figcaption>
									<h5 class="m-line">사상구 맛집 베스트 <br/> 11곳</h5>
									<p>"우리 동네에 이런 곳이 있다니!"</p>
								</figcaption>
							</figure>
						</a>
					</div>
				</div>



			</div>

		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination swiper-pagination-black "></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-black m-swiper-button-next"></div>
		<div class="swiper-button-prev swiper-button-black m-swiper-button-prev"></div>
	</div>
</section>
<!--//END BOOKING -->



<!--============================= FEATURED PLACES =============================-->
<section class="main-block border border-bottom-0 border-right-0 border-left-0 " style="margin-top: 60px;">
	<div class="container">
		<div class="row">
			<h5 class="font-weight-bold" style="color: #753D12;">베이커리 맛집!</h5>
		</div>
		<div class="row mt-4">

			<c:forEach var="bread" items="${breads}" varStatus="status" begin="0" end="7">
				<div class="col-md-3 featured-responsive">
					<div class="featured-place-wrap">
						<a href="<%=request.getContextPath()%>/board?cmd=detail&id=${bread.id}">  <img src="${bread.mainImg}" class="img-box" alt="#">
							<div class="featured-title-box mt-2">
								<h5>${bread.title}</h5>
								<h7 class="text-muted">${bread.addr }</h6>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
</section>
<!--//END FEATURED PLACES -->

<!--============================= FEATURED PLACES =============================-->
<section class="main-block border border-bottom-0 border-right-0 border-left-0 " >
	<div class="container">
		<div class="row">
			<h5 class="font-weight-bold" style="color: #753D12;">고기의 진리는 한우</h5>
		</div>
		<div class="row mt-4">

			<c:forEach var="hanwoo" items="${hanwoos}" varStatus="status" begin="0" end="7">
				<div class="col-md-3 featured-responsive">
					<div class="featured-place-wrap">
						<a href="<%=request.getContextPath()%>/board?cmd=detail&id=${hanwoo.id}">  <img src="${hanwoo.mainImg}" class="img-box" alt="#">
							<div class="featured-title-box mt-2">
								<h5>${hanwoo.title}</h5>
								<h7 class="text-muted">${hanwoo.addr }</h6>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
</section>
<!--//END FEATURED PLACES -->

<!--============================= FEATURED PLACES =============================-->
<section class="main-block border border-bottom-0 border-right-0 border-left-0 " >
	<div class="container">
		<div class="row">
			<h5 class="font-weight-bold" style="color: #753D12;">든든한 국밥</h5>
		</div>
		<div class="row mt-4">

			<c:forEach var="gukbab" items="${gukbabs}" varStatus="status" begin="0" end="7">
				<div class="col-md-3 featured-responsive">
					<div class="featured-place-wrap">
						<a href="<%=request.getContextPath()%>/board?cmd=detail&id=${gukbab.id}">  <img src="${gukbab.mainImg}" class="img-box" alt="#">
							<div class="featured-title-box mt-2">
								<h5>${gukbab.title}</h5>
								<h7 class="text-muted">${gukbab.addr }</h6>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
</section>
<!--//END FEATURED PLACES -->

<!--============================= FEATURED PLACES =============================-->
<section class="main-block border border-bottom-0 border-right-0 border-left-0 " >
	<div class="container">
		<div class="row">
			<h5 class="font-weight-bold" style="color: #753D12;">면요리 장인들</h5>
		</div>
		<div class="row mt-4">

			<c:forEach var="noodle" items="${noodles}" varStatus="status" begin="0" end="7">
				<div class="col-md-3 featured-responsive">
					<div class="featured-place-wrap">
						<a href="<%=request.getContextPath()%>/board?cmd=detail&id=${noodle.id}">  <img src="${noodle.mainImg}" class="img-box" alt="#">
							<div class="featured-title-box mt-2">
								<h5>${noodle.title}</h5>
								<h7 class="text-muted">${noodle.addr }</h6>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
</section>
<!--//END FEATURED PLACES -->




<%@ include file="../layout/footer.jsp"%>
<!-- Magnific popup JS -->
<script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.js"></script>
<script src="<%=request.getContextPath()%>/js/mainHeader.js"></script>
<script src="<%=request.getContextPath()%>/js/swiper.js"></script>

</body>

</html>