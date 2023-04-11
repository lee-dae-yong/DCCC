package com.DCCC.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.dto.AdminVO;

public class LoginAdminCheckFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpRes = (HttpServletResponse) response;
		
		// login check
		HttpSession session = httpReq.getSession();
		AdminVO loginAdmin = (AdminVO) session.getAttribute("loginAdmin");
		//login 확인
		if(loginAdmin==null) { //비로그인 상태
			String contextPath = httpReq.getContextPath();
			String from = httpReq.getRequestURI().replace(contextPath,"");
			
			String queryString = httpReq.getQueryString();
			if(queryString!=null) {
				from+="?"+queryString;
			}	
			System.out.println("from: " + from);
			
			httpReq.setAttribute("from", from);
			String returnUrl = "/WEB-INF/views/common/loginAdmin_check.jsp";
			httpReq.getRequestDispatcher(returnUrl).forward(httpReq, httpRes);
		}else {
			chain.doFilter(request, response);		
		}
	}

	@Override
	public void destroy() {}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {}

}
