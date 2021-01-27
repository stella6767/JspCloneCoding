
<%@page import="com.google.gson.Gson"%>
<%@page import="com.cos.mangoplate.domain.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<div class="container" style="padding-left: 100px; padding-right: 100px;" id="m-list-container">


			<div id="m-list">
				<c:forEach var="board" items="${boards}" varStatus="status" begin="0" end="${endValue}">
					<c:set var="num" value="${num + 1}" />
					<div class="d-flex justify-content-center border-bottom py-4 board-item">
						<div>
							<a href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}"> <img src="${board.mainImg}" class="m-listImg-box" alt="img13" />
							</a>
						</div>
						<div class="ml-5">
							<div class="d-flex justify-content-between">
								<div>
									<h4>${num}.${board.title}${board.rate}</h4>
								</div>
								<div>
									<i class="large material-icons">star_border</i>
								</div>
							</div>

							<div class="mt-2 text-muted">${board.addr}</div>
							<div class="mt-3">${board.foodDesc}</div>
							<div class="mt-5 d-flex  justify-content-end">
								<a class="nav-link font-weight-bold text-muted" href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}"> ${board.title} 더보기 </a> <a class="text-muted" href="<%=request.getContextPath()%>/board?cmd=detail&id=${board.id}"> <i class="material-icons " style="margin-top: 15px">chevron_right</i>
								</a>
							</div>
						</div>
					</div>

				</c:forEach>

			</div>

			<c:if test="${all eq 'all'}">
				<div class="justify-content-center align-items-center d-flex mt-2">
					<button class="btn-more text-dark" onclick="moreContent()">
						<i class="large material-icons">arrow_drop_down</i> <i class="mx-2"> 더보기 </i> <i class="large material-icons">arrow_drop_down</i>
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





	<%@ include file="../layout/footer.jsp"%>

	<script src="<%=request.getContextPath()%>/js/subHeader.js"></script>
	<script src="<%=request.getContextPath()%>/js/addList.js"></script>
<%-- 	<script src="<%=request.getContextPath()%>/js/kakaoMapApi.js"></script> --%>





	<script>
	
 		$(function() {

 			<%
				List<Board> newBoards = (List<Board>) request.getAttribute("boards");
 				Gson gson = new Gson();
 				String jsonData = gson.toJson(newBoards);
			%>
 			
			
 	 		var jsonBoards = '<%=jsonData%>';
		

			
 	 		// json 문자열
 	 		// 자바스크립트 오브젝트
 	 		jsonBoards = jsonBoards.replaceAll("\n", ""); //엔터 오류 해결!!!

 	 	jsonBoards = jsonBoards.replace(/\\n/g, "\\n")  
            .replace(/\\'/g, "\\'")
            .replace(/\\"/g, '\\"')
            .replace(/\\&/g, "\\&")
            .replace(/\\r/g, "\\r")
            .replace(/\\t/g, "\\t")
            .replace(/\\b/g, "\\b")
            .replace(/\\f/g, "\\f");
		//remove non-printable and other non-valid JSON chars
		jsonBoards = jsonBoards.replace(/[\u0000-\u0019]+/g,""); 


		//console.log(jsonBoards);


 		
  	 		var boards = JSON.parse(jsonBoards);
 	 		//console.log(ddd);

		var positions = [];
			for (board of boards){

				var title = board.title;
				var addr = board.addr;
				var lat = board.lat;
				var lng = board.lng;

				//console.log(title);

				var mark = {
						content:'<div class="text-center">'+title+'</div>'+'<div style="width:250px">'+addr+'<div>', 
						title: title,
						latlng: new kakao.maps.LatLng(lat, lng)
					};

				positions.push(mark);
				
				

				}
 
			console.log(positions);


			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(35.1379222, 129.05562775), //지도의 중심좌표.
				level: 9
				//지도의 레벨(확대, 축소 정도)
			};
			var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
						
			
			for (var i = 0; i < positions.length; i ++) {
			    

			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions[i].latlng, // 마커를 표시할 위치
			        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
			    });


			    var infowindow = new kakao.maps.InfoWindow({
			        content: positions[i].content // 인포윈도우에 표시할 내용
			    });

			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
			}



			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}

			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}

			
 			
/* 			 $.ajax({
				 	type:"POST",
					//url: "/mangoplate/board?cmd=findMap&keyword="+keyword+"&keyType="+keyType,
					url: "/mangoplate/board?cmd=findMap",
					contentType: "application/json; charset=utf-8",
					data: boards,
					dataType: "json"				
				}).done(function(result) {

					//addMap(result);
					
				});  */


		});  


		function addMap(boards){
			
			var position = [];
			// 마커를 표시할 위치와 title 객체 배열입니다 

			console.log(boards);
			
			
			for (board of boards) {
				var title = board.title;
				var addr = board.addr;
				var lat = board.lat;
				var lng = board.lng;

				console.log("뭔데" +title);

				var mark = {
					title: title,
					latlng: new kakao.maps.LatLng(lat, lng)
				};

				position.push(mark);
			}

			//console.log(position);
			console.log("뭐여");
			

/* 			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(35.1379222, 129.05562775), //지도의 중심좌표.
				level: 9
				//지도의 레벨(확대, 축소 정도)
			};
			var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
 */



			}


	
	</script>


 


</body>

</html>






