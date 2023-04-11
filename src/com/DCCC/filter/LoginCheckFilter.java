package com.DCCC.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.dto.MemberVO;

public class LoginCheckFilter implements Filter {

	private List<String> exURLs = new ArrayList<String>();
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpRes = (HttpServletResponse) response;
		
		String reqUrls = httpReq.getRequestURI()
				.substring(httpReq.getContextPath().length());
		boolean result = true;


		for (String exURL : exURLs) {
			if(reqUrls.contains(exURL)) result= false;
		}
		if (result) {
			chain.doFilter(request, response);		
			return;
		}
		
		// login check
		HttpSession session = httpReq.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		//login 확인
		if(loginUser==null) { //비로그인 상태
			String contextPath = httpReq.getContextPath();
			String from = httpReq.getRequestURI().replace(contextPath,"");
			
			String queryString = httpReq.getQueryString();
			if(queryString!=null) {
				from+="?"+queryString;
			}	
			
			
			httpReq.setAttribute("from", from);
			String returnUrl = "/WEB-INF/views/common/login_check.jsp";
			httpReq.getRequestDispatcher(returnUrl).forward(httpReq, httpRes);
		}else {
			chain.doFilter(request, response);		
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		String excludeURLNames = fConfig.getInitParameter("include");
		
		StringTokenizer st = new StringTokenizer(excludeURLNames, ",");
		
		while (st.hasMoreTokens()) {
			exURLs.add(st.nextToken().trim());
		}
		
	}

	

}
