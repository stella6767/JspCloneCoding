package com.cos.mangoplate.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.mangoplate.domain.user.User;
import com.cos.mangoplate.domain.user.dto.JoinReqDto;
import com.cos.mangoplate.domain.user.dto.LoginReqDto;
import com.cos.mangoplate.domain.user.dto.UpdateReqDto;
import com.cos.mangoplate.service.UserService;
import com.cos.mangoplate.utill.Script;


@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public UserController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		UserService userService = new UserService();
		// http://localhost:8080/blog/user?cmd=loginForm
		if(cmd.equals("loginForm")) {
			RequestDispatcher dis = 
					request.getRequestDispatcher("user/loginForm.jsp");
				dis.forward(request, response);	
		}else if(cmd.equals("login")) {
			// 서비스 호출
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			LoginReqDto dto = new LoginReqDto();
			dto.setUsername(username);
			dto.setPassword(password);
			
			User userEntity = userService.로그인(dto);
			if(userEntity != null) {
				HttpSession session = request.getSession();
				session.setAttribute("principal", userEntity); //인증주체
				response.sendRedirect("index.jsp"); //index는 유일한 예외
			}else {
				Script.back(response, "로그인실패");
			}
			
			
		}else if(cmd.equals("joinForm")) {
			RequestDispatcher dis = 
					request.getRequestDispatcher("user/joinForm.jsp");
				dis.forward(request, response);
		}else if(cmd.equals("join")) {
			// 서비스 호출
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			JoinReqDto dto = new JoinReqDto();
			dto.setUsername(username);
			dto.setPassword(password);
			dto.setEmail(email);

			System.out.println("회원가입 : "+dto);
			int result = userService.회원가입(dto);
			if(result == 1) {
				response.sendRedirect("index.jsp");
			}else {
				Script.back(response, "회원가입 실패");
			}

		}else if(cmd.equals("usernameCheck")) {
			BufferedReader br = request.getReader();
			String username = br.readLine();
			System.out.println(username);
			int result = userService.유저네임중복체크(username);
			PrintWriter out = response.getWriter();
			if(result == 1) {
				out.print("ok");
			}else {
				out.print("fail");
			}
			out.flush();
		}else if(cmd.equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");
		}else if(cmd.equals("updateForm")) { //회원정보 들어가기
			
			RequestDispatcher dis = 
					request.getRequestDispatcher("user/updateForm.jsp");
				dis.forward(request, response);						
		}else if(cmd.equals("update")) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			
			UpdateReqDto dto = new UpdateReqDto();
			
			dto.setUsername(username);
			dto.setId(id);
			dto.setPassword(password);
			dto.setEmail(email);
		
			int result = userService.회원수정(dto);
			
			if (result == 1) {
				response.sendRedirect("index.jsp");
			} else {
				Script.back(response, "회원수정 실패");
			}
			
			
		}else if(cmd.equals("delete")) {
			System.out.println("유저 삭제");			
			int id = Integer.parseInt(request.getParameter("id"));
			int result = userService.회원삭제(id);
			
			if (result == 1) {
				response.sendRedirect("index.jsp");
			} else {
				Script.back(response, "회원삭제 실패");
			}
						
		}
		
		
		
		
	}
}
