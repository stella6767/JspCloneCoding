<%@page import="com.cos.mangoplate.domain.board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<c:set var="reviewLength" value="${fn:length(reviews)}" />

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
					<li class="text=muted mt-1 ml-2" style="font-size: 5px;">${board.readCount}</li>
					
				</ul>


			</div>
			<div class="col-md-6">
				<div class="reserve-seat-block">

					<c:if test="${not empty sessionScope.principal.id }">

						<div class="reserve-btn mt-1">
							<form action="/mangoplate/review?cmd=saveForm" method="POST">
								<input type="hidden" name="title" value="${board.title}" /> <input type="hidden" name="boardId" value="${board.id}" />
								<button class="btn waves-effect waves-light" type="submit" name="action">
									<i class="material-icons right">create</i>
									<h7 class="mb-1">리뷰쓰기</h7>
								</button>
							</form>

						</div>
						<c:choose>
							<c:when test="${board.likeStar ne 1}">
								<button class="btn m-star-btn" onclick="like(${board.id})">
									<div class="review-btn mt-1">
										<i class="large material-icons m-star">star_border</i>
									</div>
								</button>
							</c:when>
							<c:otherwise>
								<button class="btn m-star-btn" onclick="dislike(${board.id})">
									<div class="review-btn mt-1">
										<i class="large material-icons m-star">star</i>
									</div>
								</button>
							</c:otherwise>
						</c:choose>



					</c:if>

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
									<c:choose>
										<c:when test="${empty board.url}">
											<td>없음</td>
										</c:when>
										<c:otherwise>
											<td>${board.url}</td>
										</c:otherwise>
									</c:choose>

								</tr>
							</tbody>
						</table>
						<hr>
					</div>
					<div class="d-flex">
						<div class="font-weight-bold text-muted" style="width: 30%;">
							<p>식당소개</p>
						</div>
						<div class="font-italic">${board.foodDesc}</div>
					</div>
				</div>



				<div class="booking-checkbox_wrap mt-4">
					<h5>${reviewLength}Reviews</h5>
					<hr>


					<c:forEach var="review" items="${reviews}" varStatus="status">

						<div class="customer-review_wrap addReview">
							<div class="customer-img">

								<p>${review.username}</p>

								<div class="mt-5">
									<c:if test="${sessionScope.principal.id == review.userId}">
										<a href="/mangoplate/review?cmd=updateForm&id=${review.id}&boardTitle=${board.title}" class="btn default" style="font-size: 5px;">수정</a>
										<button class="btn default " onClick="deleteReview(${review.id})" style="font-size: 5px;">삭제</button>
									</c:if>
								</div>
							</div>
							<div class="customer-content-wrap">
								<div class="customer-content">
									<div class="customer-review">
										<h6>${review.title}</h6>

										<p>${review.createDate}</p>
									</div>

								</div>
								<p class="customer-text">${review.content}</p>


							</div>
						</div>
						<hr>

					</c:forEach>
					<div class="justify-content-center align-items-center d-flex">
						<button class="btn-more" onclick="moreReview(${board.id}, ${principal.id})">
							<i class="large material-icons">arrow_drop_down</i> <i class="mx-2"> 더보기 </i> <i class="large material-icons">arrow_drop_down</i>
						</button>

					</div>

				</div>



			</div>
			<div class="col-md-4 responsive-wrap">
				<div class="contact-info">
					<div id="map" style="width: 100%; height: 400px;"></div>
				</div>

			</div>
		</div>
	</div>
</section>
<!--//END BOOKING DETAILS -->

<%
	Board board = (Board) request.getAttribute("board");
double lat = board.getLat();
double lng = board.getLng();
String title = board.getTitle();
String addr = board.getAddr();
%>


<%@ include file="../layout/footer.jsp"%>


<script>


</script>










<script>
	//ctrl+shift+f 해서 정렬하면 중간에 자바 구문들도 같이 적용되기 때문에 구문 망가진다. 귀찮아서 그냥 둠
	var title = '<%=title%>';

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(<%=lat%>,<%=lng%>), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 마커가 표시될 위치입니다 
	var markerPosition = new kakao.maps.LatLng(<%=lat%>,<%=lng%>);

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

	// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent = '<div class="font-weight-bold text-center">' + title
			+ '</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
		content : iwContent
	});

	// 마커에 마우스오버 이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'mouseover', function() {
		// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
		infowindow.open(map, marker);
	});

	// 마커에 마우스아웃 이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'mouseout', function() {
		// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
		infowindow.close();
	});


	

	
</script>

<script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.js"></script>
<script src="<%=request.getContextPath()%>/js/subHeader.js"></script>
<script src="<%=request.getContextPath()%>/js/swiper2.js"></script>
<script src="<%=request.getContextPath()%>/js/reviewDetail.js"></script>
<script src="<%=request.getContextPath()%>/js/addStar.js"></script>




