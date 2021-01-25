<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*  response.sendRedirect("board/list.jsp");  */

	RequestDispatcher dis = request.getRequestDispatcher("/board?cmd=mainList");
	dis.forward(request, response); 
			 
	/* response.sendRedirect("/mangoplate/board?cmd=list"); */
%>
