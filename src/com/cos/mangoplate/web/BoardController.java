package com.cos.mangoplate.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.mangoplate.domain.board.Board;
import com.cos.mangoplate.service.BoardService;

@WebServlet("/board")
public class BoardController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public BoardController() {
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
		
		HttpSession session = request.getSession();
		
		
		if(cmd.equals("list")) {
			
			List<Board> boards = boardService.전체글목록보기();			
			request.setAttribute("boards", boards);
			
			System.out.println("List page 들어옴: " + boards);
			
			RequestDispatcher dis = request.getRequestDispatcher("board/list.jsp");// RequestDispathcer 만들어서 이동
			//RequestDispatcher dis = request.getRequestDispatcher("test/apiTest.jsp");
			dis.forward(request, response);			
		}
		
		
		
		
		
		
	}
	
	
	
	
}
