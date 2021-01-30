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
		 var rate = board.rate;

		 //console.log(board);  //gson으로 한 번 직렬화를 거쳐야 한다. json.stringfy는 안 먹힘..
 		
  		 var addList = `<div class="d-flex justify-content-center border-bottom py-4 board-item">`;
			addList += `<div><a href="/mangoplate/board?cmd=detail&id=${id}"> <img src="${mainImg}" class="m-listImg-box" alt="img13" /></a>`;
			addList += `</div><div class="ml-5"><div class="d-flex justify-content-between"><div><h4>${id}.${title}${rate}</h4>`;
			addList +=`</div><div><i class="large material-icons">star_border</i></div></div>`;
			addList += `<div class="mt-2 text-muted">${addr}</div>`;
			addList += `<div class="mt-3">${foodDesc}</div>`;
			addList += `<div class="mt-5 d-flex  justify-content-end">`;
			addList += `<a class="nav-link font-weight-bold text-muted" href="/mangoplate/board?cmd=detail&id=${id}">`;
			addList += ` ${title} 더보기 </a> <a class="text-muted" href="/mangoplate/board?cmd=detail&id=${id}">`;
			addList += ` <i class="material-icons " style="margin-top: 15px">chevron_right</i></a></div></div></div>`;			

			$("#m-list").append(addList); 
     }
	
}