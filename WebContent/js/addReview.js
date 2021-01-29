function moreReview(boardId, sessionId) {

	var startNum = $(".addReview").length;
	console.log(startNum);
	console.log(boardId);

	$.ajax({
		url: "/mangoplate/review?cmd=moreReview&startNum=" + startNum + "&boardId=" + boardId + "&sessionId=" + sessionId,
		contentType: "application/json; charset=utf-8",
		dataType: "json"

	}).done(function(result) {

		console.log(result);
		addList(result);

	});
}


function addList(reviews) {


	console.log(reviews);

	for (review of reviews) {

		console.log(review);
		var userId = review.userId;
		var id = review.id;
		var title = review.title;
		var content = review.content;
		var createDate = review.createDate;
		var boardId = review.boardId;
		var username = review.username;

		var addList = `<div class="customer-review_wrap addReview"><div class="customer-img"><p>${username}</p><div class="mt-5">`;
		addList += `<c:if test=" ${sessionId}  == ${userId}">`;
		addList += `<a href="/mangoplate/review?cmd=updateForm&id=${id}&boardTitle=${title}" class="btn default" style="font-size: 5px;">수정</a>`;
		addList += `<button class="btn default " onClick="deleteReview(${id})" style="font-size: 5px;">삭제</button>`;
		addList += `</c:if></div></div><div class="customer-content-wrap">`;
		addList += `<div class="customer-content"><div class="customer-review"><h6>${title}</h6><p>${createDate}</p></div></div>`;
		addList += `<p class="customer-text">${content}</p></div></div><hr>`;

		 $(".addReview").after(addList);
		


	}

}

