package com.cos.mangoplate.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.mangoplate.domain.star.dto.SaveReqDto;
import com.cos.mangoplate.domain.user.User;
import com.cos.mangoplate.service.StarService;
import com.cos.mangoplate.utill.Script;
import com.google.gson.Gson;

@WebServlet("/star")
public class StarController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public StarController() {
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
		StarService starService = new StarService();

		HttpSession session = request.getSession();

		if (cmd.equals("save")) {

			Gson gson = new Gson();
			User user = (User) session.getAttribute("principal");

			int userId = user.getId();
			int boardId = Integer.parseInt(request.getParameter("boardId"));

			SaveReqDto dto = new SaveReqDto();

			dto.setUserId(userId);
			dto.setBoardId(boardId);

			System.out.println(dto);
			int result = starService.찜하기(dto);

			String data = gson.toJson(dto); // 무조건 json 데이터로 바꿔서 보내야지 ajax done 실행..

			if (result == 1) {
				Script.responseData(response, data);

			} else {
				Script.back(response, "찜하기에 실패하였습니다.");
			}

		} else if (cmd.equals("delete")) {

			Gson gson = new Gson();
			User user = (User) session.getAttribute("principal");

			int userId = user.getId();
			int boardId = Integer.parseInt(request.getParameter("boardId"));

			SaveReqDto dto = new SaveReqDto();

			dto.setUserId(userId);
			dto.setBoardId(boardId);

			int result = starService.찜취소(dto);

			String data = gson.toJson(dto); // 무조건 json 데이터로 바꿔서 보내야지 ajax done 실행..

			if (result == 1) {
				Script.responseData(response, data);

			} else {
				Script.back(response, "찜하기에 실패하였습니다.");
			}

		}

	}

}