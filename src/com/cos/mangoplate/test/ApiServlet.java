package com.cos.mangoplate.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.mangoplate.domain.matzip.Item;
import com.cos.mangoplate.service.matzipService;




@WebServlet("/api")
public class ApiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ApiServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Item> items = ApiTest.apitest();
		
		
		System.out.println(items.get(1).getMainTitle());
		
		matzipService matzipService = new matzipService();
		matzipService.데이터입력(items); //이제는 필요없음
		
		
		request.setAttribute("items", items);
		
		RequestDispatcher dis = request.getRequestDispatcher("test/apiTest.jsp");// RequestDispathcer 만들어서 이동
		dis.forward(request, response);

		
	}

}
