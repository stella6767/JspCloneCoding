<%@page import="com.google.gson.Gson"%>
<%@page import="com.cos.mangoplate.domain.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<c:set var="boardsSize" value="${fn:length(boards)}" />


<!--============================= DETAIL =============================-->
<section>
	<div style="margin-left: 200px;">
		<div class="row">
			<div class="col-md-8 responsive-wrap " style="padding-right: 100px;">
				<div class="row detail-filter-wrap">
					<div class="col-md-4 featured-responsive">
						<div class="detail-filter-text">
							<p>
								${boardCount} Results For <span>${keyword}</span>
							</p>
						</div>
					</div>
					<div class="col-md-8 container featured-responsive">
						<div class="detail-filter ">
							<p>Filter by</p>
							<form class="filter-dropdown">
								<select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect1">
									<option selected>default</option>
									<option value="1">높은순</option>
									<option value="2">낮은순</option>
								</select>
								<div class="map-responsive-wrap">
									<a class="map-icon" href="#"><span class="icon-location-pin"></span></a>
								</div>
						</div>
					</div>
				</div>

				<div class="row detail-options-wrap">

					<c:forEach var="board" items="${boards}">

						<div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
							<div class="featured-place-wrap">
								<a href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}"> <img src="${board.mainImg}" class="img-box" alt="#">
									<div class="featured-title-box mt-2">
										<h5>${board.title}</h5>
										<h7 class="text-muted">${board.addr}</h7>
										<div>
											<h7>${board.rate} ${board.readCount}</h7>
										</div>
									</div>
								</a>
							</div>
						</div>


					</c:forEach>


				</div>





				<ul class="pagination">
					<c:forEach varStatus="status" begin="1" end="${lastpage}">

						<c:choose>
							<c:when test="${page eq status.current}">
								<li class=" page-item active"><a class="page-link" href="<%=request.getContextPath()%>/board?cmd=search&keyword=${keyword}&page=${status.current}"> ${status.current} </a></li>
							</c:when>

							<c:otherwise>
								<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/board?cmd=search&keyword=${keyword}&page=${status.current}"> ${status.current} </a></li>
							</c:otherwise>
						</c:choose>


					</c:forEach>
				</ul>

			</div>
			<div class="col-md-4 responsive-wrap map-wrap mt-5">
				<div id="map" style="width: 100%; height: 600px;"></div>
				<div>
			
				</div>
			</div>
		</div>
	</div>

</section>
<!--//END DETAIL -->


 			<%
				List<Board> newBoards = (List<Board>) request.getAttribute("boards");
 				Gson gson = new Gson();
 				String jsonData = gson.toJson(newBoards);
			%>

<script>
var jsonBoards = '<%=jsonData%>';

</script>


<%@ include file="../layout/footer.jsp"%>


<script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.js"></script>
<script src="<%=request.getContextPath()%>/js/swiper.js"></script>
<script src="<%=request.getContextPath()%>/js/subHeader.js"></script>
<script src="<%=request.getContextPath()%>/js/kakaoMapApi.js"></script> 


</body>
</html>
