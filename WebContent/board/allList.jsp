
<%@page import="com.google.gson.Gson"%>
<%@page import="com.cos.mangoplate.domain.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<body>

	<c:set var="now" value="<%=new java.util.Date()%>" />
	<c:set var="sysYear">
		<fmt:formatDate value="${now}" pattern="yyyy" />
	</c:set>


	<c:set var="endValue" value="${fn:length(boards)}" />

	<c:if test="${all eq 'all'}">
		<c:set var="endValue" value="9" />
	</c:if>




	<section class="main-block light-bg">
		<div class="container">
			<div class="text-center">
				<fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" />
			</div>
			<div class="text-center mt-4">
				<c:choose>
					<c:when test="${all eq 'all'}">
						<h3 class="font-weight-bold">부산시 모든 맛집 베스트 180곳</h3>
					</c:when>

					<c:otherwise>
						<h3 class="font-weight-bold">부산시 ${keyword} 맛집로드 ${cnt}곳</h3>
					</c:otherwise>
				</c:choose>

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
				<c:forEach var="board" items="${boards}" varStatus="status"
					begin="0" end="${endValue}">
					<c:set var="num" value="${num + 1}" />
					<div
						class="d-flex justify-content-center border-bottom py-4 board-item">
						<div>
							<a
								href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}">
								<img src="${board.mainImg}" class="m-listImg-box" alt="img13" />
							</a>
						</div>
						<div class="ml-5">
							<div class="d-flex justify-content-between">
								<div>
									<h4>${num}.${board.title}${board.rate}</h4>
								</div>
								<!-- 								<div>
									<i class="large material-icons">star_border</i>
								</div> -->
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

			<div class="justify-content-center py-4 border-top">
				<div class="text-center mb-5">
					<h3 class="font-weight-bold text-info mt-3">리스트 지도</h3>
				</div>
				<div id="map" style="width: 100%; height: 400px;"></div>
			</div>


		</div>

	</section>

	<%
		List<Board> newBoards = (List<Board>) request.getAttribute("boards");
		Gson gson = new Gson();
		String jsonData = gson.toJson(newBoards);
	%>
	



	<%@ include file="../layout/footer.jsp"%>
<script>
	var jsonBoards = '<%=jsonData%>';  //외부로 분리된 자바스크립트 파일은 jsp 변수를 직접 사용할 수 없다.. 이렇게 하는 게 최선...
	
</script> 

	<script src="<%=request.getContextPath()%>/js/subHeader.js"></script>
	<script src="<%=request.getContextPath()%>/js/addList.js"></script>
    <script src="<%=request.getContextPath()%>/js/kakaoMapApi.js"></script> 


</body>

</html>






