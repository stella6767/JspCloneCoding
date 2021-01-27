var boards = `<%=request.getAttribute("boards")%>`;

//JSON.stringify(boards);
var position = [];
// 마커를 표시할 위치와 title 객체 배열입니다 

console.log(boards);

for (board of boards) {
	var title = board.title;
	var addr = board.addr;
	var lat = board.lat;
	var lng = board.lng;

	//console.log(board);

	var mark = {
		title: title,
		latlng: new kakao.maps.LatLng(lat, lng)
	};

	position.push(mark);
}

//console.log(position);

var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(35.1379222, 129.05562775), //지도의 중심좌표.
	level: 9
	//지도의 레벨(확대, 축소 정도)
};
var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴



		//console.log(position);
