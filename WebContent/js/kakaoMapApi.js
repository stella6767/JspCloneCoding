
$(function() {
	


	//오류 있는 제이슨 데이터 파싱
	jsonBoards = jsonBoards.replaceAll("\n", ""); //엔터 오류 해결!!!
	jsonBoards.replace(/\\n/g, "\\n")
		.replace(/\\'/g, "\\'")
		.replace(/\\"/g, '\\"')
		.replace(/\\&/g, "\\&")
		.replace(/\\r/g, "\\r")
		.replace(/\\t/g, "\\t")
		.replace(/\\b/g, "\\b")
		.replace(/\\f/g, "\\f");
	//remove non-printable and other non-valid JSON chars
	jsonBoards= jsonBoards.replace(/[\u0000-\u0019]+/g, "");
	

	var boards = JSON.parse(jsonBoards); // json은 그냥 문자열이다.  .으로 접근할려면 자바스크립트 오브젝트로 만들어줘야 한다.

	console.log(boards);


	var positions = [];
	for (board of boards) {

		var title = board.title;
		var addr = board.addr;
		var lat = board.lat;
		var lng = board.lng;

		//console.log(title);

		var mark = {
			content: '<div class="text-center">' + title + '</div>' + '<div style="width:250px">' + addr + '<div>',
			title: title,
			latlng: new kakao.maps.LatLng(lat, lng)
		};

		positions.push(mark);


	}

	console.log(positions);


	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(35.1379222, 129.05562775), //지도의 중심좌표.
		level: 10
		//지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴


	for (var i = 0; i < positions.length; i++) {


		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map: map, // 마커를 표시할 지도
			position: positions[i].latlng, // 마커를 표시할 위치
			title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
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


function addMap(boards) {

	var position = [];
	// 마커를 표시할 위치와 title 객체 배열입니다 

	console.log(boards);


	for (board of boards) {
		var title = board.title;
		var addr = board.addr;
		var lat = board.lat;
		var lng = board.lng;

		console.log("뭔데" + title);

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