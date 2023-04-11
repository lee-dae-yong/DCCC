package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.MemberService;
import com.DCCC.service.SessionService;

public class MemberMyPageListAction implements Action {

	private SessionService sessionService;
	 public void setSessionService(SessionService sessionService) {
		 this.sessionService = sessionService;
	 }
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url ="/WEB-INF/views/member/list.jsp";
		 
		
		 return url;
	}

}
