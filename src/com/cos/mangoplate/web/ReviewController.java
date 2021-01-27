package com.cos.mangoplate.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.mangoplate.service.BoardService;
import com.cos.mangoplate.service.ReviewService;

@WebServlet("/review")
public class ReviewController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	public ReviewController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cmd = request.getParameter("cmd");
		
		BoardService boardService = new BoardService();
		ReviewService reviewService = new ReviewService();
		
		
		HttpSession session = request.getSession();
		
		if(cmd.equals("saveForm")) {
			
			//User principal = (User) session.getAttribute("principal");
//			if (principal != null) {
//				RequestDispatcher dis = request.getRequestDispatcher("review/saveForm.jsp");
//				dis.forward(request, response);
//			} else {
//				RequestDispatcher dis = request.getRequestDispatcher("user/loginForm.jsp");
//				dis.forward(request, response);
//			}

			
			RequestDispatcher dis = request.getRequestDispatcher("review/saveForm.jsp");
			dis.forward(request, response);
			
		}
		
		
		
		
	}
}
