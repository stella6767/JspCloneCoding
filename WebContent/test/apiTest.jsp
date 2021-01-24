
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>공공데이터 화면에 뿌리기</h1>

	<%
		//List<Item> items = (List)request.getAttribute("items");
	%>


<%-- 	<div>${items.get(1).getMaintitle()}</div> --%>

	<c:forEach var="item" items="${items}">
		<div class="card col-md-12 m-2">
			<div class="card-body">
				<h4 class="card-title">${item.mainTitle}</h4>



			</div>
		</div>
	</c:forEach>




</body>
</html>