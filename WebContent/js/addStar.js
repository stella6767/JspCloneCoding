
function like(boardId) {	
	 $.ajax({
		url: "/mangoplate/star?cmd=update&boardId="+boardId,
		contentType: "application/json; charset=utf-8",
		dataType: "json"
		
	}).done(function(result) {
		
		addStar(result);
		
	}); 
}

function addStar(result){
	
	var boardId = result.boardId; //왜 백틱으로해서 안 먹힐까..이제는 또 먹히네..
	console.log("?"+boardId);
	
	var addStar = `<button class="btn m-star-btn" onclick="dislike( ${boardId} )"><div class="review-btn mt-1">`;	
	addStar += `<i class="large material-icons m-star">star</i>`;
	addStar += `</div></button>`;
	
	$(".m-star-btn").replaceWith(addStar);
	//$(".m-star").replaceWith(addStar);

}

function dislike(boardId){
	console.log("dislike:"+boardId);
	
	 $.ajax({
			url: "/mangoplate/star?cmd=cancel&boardId="+boardId,
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(result) {
			
			emptyStar(result);
			
		}); 
	
}

function emptyStar(result){

	var boardId = result.boardId; 
	
	var addStar = `<button class="btn m-star-btn" onclick="like( ${boardId} )"><div class="review-btn mt-1">`;	
	addStar += `<i class="large material-icons m-star">star_border</i>`;
	addStar += `</div></button>`;
	
	$(".m-star-btn").replaceWith(addStar);
	
}