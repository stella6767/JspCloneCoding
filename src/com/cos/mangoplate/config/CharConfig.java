package com.cos.mangoplate.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharConfig implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
    	HttpServletResponse response = (HttpServletResponse) resp;
		
     	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//response.setContentType("text/html; charset=utf-8"); //한글깨지는 거 방지.. 이상하게 css가 적용이 안되네..
     	
		chain.doFilter(request, response);
	}
}