
function deleteReview(id) {
	
	alert("리뷰 아이디 : " + id);

	$.ajax({
		type : "post",
		url : "/mangoplate/review?cmd=delete&id="+id,
		dataType: "json"

	}).done(function(result) {
		if (result.statusCode == 1) {
			location.reload();
		} else {
			alert("댓글 삭제 실패");
		}

	});

}




function deleteById(boardId) {

	$.ajax({
		type: "POST",
		url: "/blog/board?cmd=delete&id=" + boardId,
		dataType: "json"
	}).done(function(result) {
		console.log(result);
		if (result.statusCode == 1) {
			location.href = "index.jsp";
		} else {
			alert("삭제에 실패하였습니다.");
		}
	});
}



