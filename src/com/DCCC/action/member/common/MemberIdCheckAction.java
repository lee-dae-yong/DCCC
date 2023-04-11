package com.DCCC.action.member.common;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.SessionService;

public class MemberIdCheckAction implements Action{

	private SessionService sessionService;
	
	public void setSessionService(SessionService sessionService) {
		this.sessionService = sessionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String resultStr = "";
		String id = request.getParameter("id");
		
		MemberVO member = sessionService.getMember(id);
		if(member!=null) {
			resultStr="DUPLICATED";
		}
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(resultStr);
		out.close();
		
		return url;
	}

}
