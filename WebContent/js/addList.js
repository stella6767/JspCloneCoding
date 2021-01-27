function moreContent() {

	 var startNum = $(".board-item").length; 
	console.log(startNum);
		
	 $.ajax({
		url: "/mangoplate/board?cmd=moreContent&startNum="+startNum,
		contentType: "application/json; charset=utf-8",
		dataType: "json"
		
	}).done(function(result) {

		addList(result);
		
	}); 
}

function addList(boards){

	 for (board of boards) {
         var mainImg = board.mainImg;
         var id = board.id;
         var title = board.title;
         var addr = board.addr;
		 var foodDesc = board.foodDesc;

		 //console.log(board);  //gson으로 한 번 직렬화를 거쳐야 한다. json.stringfy는 안 먹힘..
 		
  		 var addList = `<div class="d-flex justify-content-center border-bottom py-4 board-item">`;
			addList += `<div><img src="${mainImg}" class="m-listImg-box" alt="img13" /></div>`;
			addList += `<div class="ml-5"><div class="d-flex justify-content-between"><div><h4>${id}.${title}</h4></div>`;
			addList += `<div><i class="large material-icons">star_border</i></div></div>`;
			addList += `<div class="mt-2 text-muted">${addr}</div>`;
			addList += `<div class="mt-3">${foodDesc}</div>`;
			addList += `<div class="text-right mt-5">광릉한옥집 더보기 -></div>`;
			addList += `</div></div>`; 
			
			

			$("#m-list").append(addList); 
     }
	
}