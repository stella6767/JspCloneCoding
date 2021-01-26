<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>

	<section class="main-block light-bg">
		<div class="container">
			<div class="text-center">클릭 | 날짜</div>
			<div class="text-center mt-4">
				<h3 class="font-weight-bold">부산시 모든 맛집 베스트 180곳</h3>
			</div>
			<div class="text-center mt-4">
				<h7 class="font-weight-bold text-muted">"부산 먹방로드 이것만 보세요!"</h7>
			</div>

		</div>
	</section>



	<section class="main-block">
		<div class="container"
			style="padding-left: 100px; padding-right: 100px;"
			id="m-list-container">


			<div id="m-list">
				<c:forEach var="board" items="${boards}">
					<div
						class="d-flex justify-content-center border-bottom py-4 board-item">
						<div>
							<img src="${board.mainImg}" class="m-listImg-box" alt="img13" />
						</div>
						<div class="ml-5">
							<div class="d-flex justify-content-between">
								<div>
									<h4>${board.id}.${board.title}${board.rate}</h4>
								</div>
								<div>
									<i class="large material-icons">star_border</i>
								</div>
							</div>

							<div class="mt-2 text-muted">${board.addr}</div>
							<div class="mt-3">${board.foodDesc}</div>
							<div class="mt-5 d-flex  justify-content-end">
								<a class="nav-link font-weight-bold text-muted"
									href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}">
									${board.title} 더보기 </a> <a class="text-muted"
									href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}">
									<i class="material-icons " style="margin-top: 15px">chevron_right</i>
								</a>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>

			<c:if test="${all eq 'all'}">
				<div class="justify-content-center align-items-center d-flex mt-2">
					<button class="btn-more text-dark" onclick="moreContent()">
						<i class="large material-icons">arrow_drop_down</i> <i
							class="mx-2"> 더보기 </i> <i class="large material-icons">arrow_drop_down</i>
					</button>
				</div>
			</c:if>
		</div>
	</section>


	<section class="main-block">
		<div class="container"
			style="padding-left: 100px; padding-right: 100px;">
			<div class="justify-content-center py-4">
				<div>리스트 지도</div>
				<div class="m-list-map">지도API</div>
			</div>
		</div>
	</section>

	<hr />

	<%@ include file="../layout/footer.jsp"%>

	<script src="<%=request.getContextPath()%>/js/subHeader.js"></script>
	<script src="<%=request.getContextPath()%>/js/addList.js"></script>


</body>

</html>






