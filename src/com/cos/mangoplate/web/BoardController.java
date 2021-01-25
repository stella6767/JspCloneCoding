package com.cos.mangoplate.web;

import java.io.IOException;
import java.util.ArrayList;
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
		
		
		if(cmd.equals("mainList")) {
			
			System.out.println("List page");
			List<Board> boards = boardService.전체글목록보기();			
			request.setAttribute("boards", boards);
			
			//메뉴별 리스트
			List<Board> breads = new ArrayList<>();
			List<Board> mandus = new ArrayList<>();
			List<Board> gukbabs = new ArrayList<>();
			List<Board> noodles = new ArrayList<>();
			
			for (Board board : boards) {
				if(board.getFoodDesc().contains("빵")) {
					breads.add(board);
				}
				
				if(board.getFoodDesc().contains("일식")) {
					mandus.add(board);
				}
				
				if(board.getFoodDesc().contains("국밥")) {
					gukbabs.add(board);
				}
				if(board.getFoodDesc().contains("국수")) {
					noodles.add(board);
				}							
			}
			
			request.setAttribute("breads", breads);
			request.setAttribute("mandus", mandus);
			request.setAttribute("gukbabs", gukbabs);
			request.setAttribute("noodles", noodles);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("board/mainList.jsp");
			dis.forward(request, response);			
		}else if(cmd.equals("allList")) {
			
			System.out.println("allList page");
			
			List<Board> boards = boardService.전체글목록보기();			
			request.setAttribute("boards", boards);
			
			
			

			RequestDispatcher dis = request.getRequestDispatcher("board/allList.jsp");
			dis.forward(request, response);	
			
		}else if(cmd.equals("moreContent")) {
			
			
			
			
		}
		
		
		
		
		
		
	}
	
	
	
	
}
