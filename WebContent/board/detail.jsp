<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!--============================= BOOKING =============================-->
<div>
	<!-- Swiper -->
	<div class="swiper-container">
		<div class="swiper-wrapper">

			<c:forEach var="no" begin="1" end="3">

				<div class="swiper-slide">
					<a href="${board.mainImg }" class="grid image-link"> <img src="${board.mainImg}" class="img-box3" alt="#">
					</a>
				</div>

				<div class="swiper-slide">
					<a href="${board.subImg}" class="grid image-link"> <img src="${board.subImg}" class="img-box3" alt="#">
					</a>
				</div>
			</c:forEach>

		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination swiper-pagination-white"></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>
	</div>
</div>




<!--//END BOOKING -->
<!--============================= RESERVE A SEAT =============================-->
<section class="reserve-block">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h5>${board.title}</h5>
				<p>
					<span>${board.rate}</span>
				</p>

				<ul class="reserve-description d-flex list-unstyled pt-3">
					<li><i class="material-icons">remove_red_eye</i></li>
					<li>${board.readCount}</li>
					<li>별</li>
				</ul>


			</div>
			<div class="col-md-6">
				<div class="reserve-seat-block">

					<div class="reserve-btn mt-1">
						
							
							
							<a href="<%=request.getContextPath()%>/review?cmd=saveForm">
							<span class="icon-pencil d-block"></span>리뷰쓰기</a>
						
					</div>
					<div class="review-btn">
						<i class="large material-icons">star_border</i>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//END RESERVE A SEAT -->
<!--============================= BOOKING DETAILS =============================-->
<section class="light-bg booking-details_wrap">
	<div class="container">
		<div class="row">
			<div class="col-md-8 responsive-wrap">
				<div class="booking-checkbox_wrap">
					<div class="booking-checkbox">
						<table class="info">
							<tbody>
								<tr>
									<th>주소</th>
									<td class="ml-5">${board.gugun}<br /> ${board.addr}
									</td>
								</tr>

								<tr>
									<th>전화번호</th>
									<td>${board.tel}</td>
								</tr>

								<tr>
									<th>메인 메뉴</th>
									<td><span>${board.title}</span></td>
								</tr>



								<tr>
									<th style="vertical-align: top;">영업시간</th>
									<td>${board.usageTime }</td>
								</tr>



								<tr>
									<th>주요메뉴</th>
									<td>${board.menu }</td>
								</tr>



								<tr>
									<th>홈페이지</th>
									<td>${board.url }</td>
								</tr>
							</tbody>
						</table>
						<hr>
					</div>
					<div>식당소개</div>
				</div>
				<div class="booking-checkbox_wrap mt-4">
					<h5>34 Reviews</h5>
					<hr>
					<div class="customer-review_wrap">
						<div class="customer-img">
							<img src="<%=request.getContextPath()%>/images/customer-img1.jpg" class="img-fluid" alt="#">
							<p>Amanda G</p>
							<span>35 Reviews</span>
						</div>
						<div class="customer-content-wrap">
							<div class="customer-content">
								<div class="customer-review">
									<h6>Best noodles in the Newyork city</h6>
									<span></span> <span></span> <span></span> <span></span> <span class="round-icon-blank"></span>
									<p>2012-2-15</p>
								</div>
								<div class="customer-rating">8.0</div>
							</div>
							<p class="customer-text">I love the noodles here but it is so rare that I get to come here. Tasty Hand-Pulled Noodles is the best type of whole in the wall restaurant. The staff are really nice, and you should be seated quickly. I usually get the hand pulled noodles in a soup. House Special #1 is amazing and the lamb noodles are also great. If you want your noodles a little chewier, get the knife cut noodles, which are also amazing. Their dumplings are great dipped in their chili sauce.</p>
							<p class="customer-text">I love how you can see into the kitchen and watch them make the noodles and you can definitely tell that this is a family run establishment. The prices are are great with one dish maybe being $9. You just have to remember to bring cash.</p>
							<ul>
								<li><img src="<%=request.getContextPath()%>/images/review-img1.jpg" class="img-fluid" alt="#"></li>
								<li><img src="<%=request.getContextPath()%>/images/review-img2.jpg" class="img-fluid" alt="#"></li>
								<li><img src="<%=request.getContextPath()%>/images/review-img3.jpg" class="img-fluid" alt="#"></li>

							</ul>
						</div>
					</div>
					<hr>
					<div class="justify-content-center align-items-center d-flex">
						<i class="large material-icons">arrow_drop_down</i> <i class="mx-2"> 더보기 </i> <i class="large material-icons">arrow_drop_down</i>
					</div>
				</div>


			</div>
			<div class="col-md-4 responsive-wrap">
				<div class="contact-info">
					<img src="<%=request.getContextPath()%>/images/map.jpg" class="img-fluid" alt="#">

					<div>주변인기식당</div>

					<div class="d-flex">
						<div>
							<img src="<%=request.getContextPath()%>/images/review-img3.jpg" class="img-fluid" alt="#">
						</div>
						<div>dsadsad</div>


					</div>

					<a href="#" class="btn btn-outline-danger btn-contact">SEND A MESSAGE</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!--//END BOOKING DETAILS -->



<%@ include file="../layout/footer.jsp"%>


<script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.js"></script>
<script src="<%=request.getContextPath()%>/js/subHeader.js"></script>
<script src="<%=request.getContextPath()%>/js/swiper2.js"></script>

