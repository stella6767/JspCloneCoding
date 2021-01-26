package com.cos.mangoplate.web;

import java.io.BufferedReader;
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
import com.cos.mangoplate.domain.board.dto.AllListRespDto;
import com.cos.mangoplate.service.BoardService;
import com.cos.mangoplate.utill.Script;
import com.google.gson.Gson;

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
			List<Board> hanwoo = new ArrayList<>();
			List<Board> gukbabs = new ArrayList<>();
			List<Board> noodles = new ArrayList<>();
			
			for (Board board : boards) {
				if(board.getFoodDesc().contains("빵")) {
					breads.add(board);
				}
				
				if(board.getFoodDesc().contains("한우")) {
					hanwoo.add(board);
				}
				
				if(board.getFoodDesc().contains("국밥")) {
					gukbabs.add(board);
				}
				if(board.getFoodDesc().contains("국수")) {
					noodles.add(board);
				}							
			}
			
			request.setAttribute("breads", breads);
			request.setAttribute("mandus", hanwoo);
			request.setAttribute("gukbabs", gukbabs);
			request.setAttribute("noodles", noodles);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("board/mainList.jsp");
			dis.forward(request, response);			
		}else if(cmd.equals("allList")) {			
			System.out.println("allList page");
			
			List<AllListRespDto> boards = boardService.맛집목록보기();
			
			request.setAttribute("boards", boards);		

			RequestDispatcher dis = request.getRequestDispatcher("board/allList.jsp");
			dis.forward(request, response);	
			
		}else if(cmd.equals("moreContent")) {
			System.out.println("ajax로 더보기버튼");
			Gson gson = new Gson();
					
			int startNum = Integer.parseInt(request.getParameter("startNum"));
			System.out.println(startNum);
			
			List<AllListRespDto> boards = boardService.목록더보기(startNum);
			
			String responseData = gson.toJson(boards);
			Script.responseData(response, responseData);	
		}else if(cmd.equals("detail")) {
			System.out.println("detail page");
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			Board board = boardService.글상세보기(id);
			
			//리뷰글도 같이 오도록 로직
			
			request.setAttribute("board", board);
			
			RequestDispatcher dis = request.getRequestDispatcher("board/detail.jsp");
			dis.forward(request, response);	
		}else if(cmd.equals("searchList")) {
			System.out.println("searchList page");
			
			RequestDispatcher dis = request.getRequestDispatcher("board/searchList.jsp");
			dis.forward(request, response);	
			
		}
		
		
		
		
		
		
	}
	
	
	
	
}
