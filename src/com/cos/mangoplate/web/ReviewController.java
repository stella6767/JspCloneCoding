package com.cos.mangoplate.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.mangoplate.domain.board.dto.AllListRespDto;
import com.cos.mangoplate.domain.board.dto.CommonRespDto;
import com.cos.mangoplate.domain.review.dto.SaveReqDto;
import com.cos.mangoplate.domain.review.dto.SaveRespDto;
import com.cos.mangoplate.domain.review.dto.UpdateReqDto;
import com.cos.mangoplate.domain.user.User;
import com.cos.mangoplate.service.BoardService;
import com.cos.mangoplate.service.ReviewService;
import com.cos.mangoplate.utill.Script;
import com.google.gson.Gson;

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
			String title = request.getParameter("title");
			int boardId = Integer.parseInt(request.getParameter("boardId")); 
			System.out.println("title value: " + title);
			
			request.setAttribute("title", title);
			request.setAttribute("boardId", boardId);
			
			RequestDispatcher dis = request.getRequestDispatcher("review/saveForm.jsp");
			dis.forward(request, response);
			
		}else if(cmd.equals("save")) {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int userId = Integer.parseInt(request.getParameter("userId"));
			int boardId = Integer.parseInt(request.getParameter("boardId")); 
			
			
			SaveReqDto dto = new SaveReqDto();
			
			dto.setUserId(userId);
			dto.setTitle(title);
			dto.setBoardId(boardId);
			dto.setContent(content);
			
			System.out.println("save: " + dto);
			
			int result = reviewService.리뷰작성(dto);
			
			
			if (result == 1) { // 정상			
				System.out.println("replySave로직 : 1");
				response.sendRedirect(request.getContextPath()+"/board?cmd=detail&id="+boardId); //url도 같이 변경하고싶다면 sendRedirect
				
//				  RequestDispatcher dis =
//				  request.getRequestDispatcher("board?cmd=detail&id="+boardId);
//				  dis.forward(request, response);			 
				
			} else {
				Script.back(response, "리뷰작성실패");
			}	
			
		}else if (cmd.equals("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			
			int result = reviewService.리뷰삭제(id);
			
			CommonRespDto<String> commonRespDto = new CommonRespDto<>();
			commonRespDto.setStatusCode(result);
			commonRespDto.setData("성공"); //여기서 if문으로 분기해야되는 거 아닌가?
			
			Gson gson = new Gson();
			String respData = gson.toJson(commonRespDto);
			System.out.println("respData : "+respData);
			PrintWriter out = response.getWriter();
			out.print(respData);
			
			
		}else if(cmd.equals("updateForm")) {
			int id = Integer.parseInt(request.getParameter("id"));
			String boardTitle = request.getParameter("boardTitle");
			
			System.out.println("리뷰번호" +id);
			SaveRespDto dto = reviewService.리뷰상세보기(id);
			
			System.out.println(dto);
			
			request.setAttribute("dto", dto);
			request.setAttribute("boardTitle", boardTitle);
			RequestDispatcher dis = request.getRequestDispatcher("review/updateForm.jsp");
			dis.forward(request, response);		
		}else if(cmd.equals("update")) {
			int id = Integer.parseInt(request.getParameter("id"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int boardId = Integer.parseInt(request.getParameter("boardId"));
			int userId = Integer.parseInt(request.getParameter("userId"));
			

			UpdateReqDto dto = new UpdateReqDto();
			dto.setId(id);
			dto.setTitle(title);
			dto.setContent(content);

			int result = reviewService.리뷰수정(dto);

			if(result == 1) {				
				request.setAttribute("dto", dto);
				RequestDispatcher dis = request.getRequestDispatcher("/board?cmd=detail&id="+boardId);
				dis.forward(request, response);	
				//response.sendRedirect("/mangoplate/board?cmd=detail&id="+boardid);
			}else {
				Script.back(response,"리뷰 수정에 실패하였습니다.");
			}
			
			
		}else if(cmd.equals("moreReview")) {
			System.out.println("ajax로 더보기리뷰");
			Gson gson = new Gson();
					
			int startNum = Integer.parseInt(request.getParameter("startNum"));
			int boardId = Integer.parseInt(request.getParameter("boardId"));
			
			
			System.out.println("startNum: "+startNum+ "boardId: " + boardId);
			
			List<SaveRespDto> reviews = reviewService.목록더보기(boardId, startNum);
			
			
			System.out.println(reviews);
			
			String responseData = gson.toJson(reviews); //제이슨화시켜주는건데 이미 boards가 자바오브젝트이므로 가능
			Script.responseData(response, responseData);	
		}
		
		
		
		
	}
}
