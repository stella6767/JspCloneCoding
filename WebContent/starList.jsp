<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container" style="margin-top: 100px;">
	<h4 class="text-center">현재 유저가 찜한 맛집목록들입니다.</h4>


	<table class="table mt-5">
		<thead>
			<tr>
				<th>Title</th>
				<th>addr</th>
				<th>tel</th>
			</tr>
		</thead>
		<c:forEach var="starBoard" items="${starBoards}">
			<tbody>
				<tr>
					<td>${starBoard.title}</td>
					<td>${starBoard.addr}</td>
					<td>${starBoard.tel}</td>
				</tr>

			</tbody>
		</c:forEach>
	</table>


</div>

</body>
</html>