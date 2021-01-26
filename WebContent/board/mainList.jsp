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
							<form class="form-wrap mt-4">
								<div class="btn-group " role="group" aria-label="Basic example">
									<input type="text" placeholder="지역, 식당 또는 음식" class="btn-group1" style="outline: none;"> <i class="material-icons">search</i>
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
						<a href="<%=request.getContextPath()%>/board?cmd=searchList">
							<figure class="effect-ruby">
								<img src="<%=request.getContextPath()%>/images/menu1.jpg" class="img-box" alt="img13" />
								<figcaption>
									<h5>만두 맛집 베스트</h5>
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
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/menu2.jpg" class="img-box" alt="img13" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/menu3.jpg" class="img-box" alt="img13" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/menu4.jpg" class="img-box" alt="img13" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/menu5.jpg" class="img-box" alt="img13" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="find-place-img_wrap">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/menu6.jpg" class="img-box" alt="img13" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
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
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/featured1.jpg" class="img-box2" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/featured1.jpg" class="img-box2" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/featured1.jpg" class="img-box2" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>



				<div class="swiper-slide">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/featured1.jpg" class="img-box2" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/featured1.jpg" class="img-box2" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="grid">
						<figure class="effect-ruby">
							<img src="<%=request.getContextPath()%>/images/featured1.jpg" class="img-box2" />
							<figcaption>
								<h5>수원 맛집 베스트 50곳</h5>
								<p>"맛집천국 수원으로 놀러오세요!"</p>
							</figcaption>
						</figure>
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
						<a href="detail.html"> <img src="${bread.mainImg}" class="img-box" alt="#">
							<div class="featured-title-box mt-2">
								<h5>${bread.title}</h5>
								<h7>${bread.place }</h6>
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