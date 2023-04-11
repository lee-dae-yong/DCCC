package com.DCCC.action.member.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;

public class LoginFormAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/common/loginForm.jsp";
		String error = request.getParameter("error");
		
		String from = request.getParameter("from");
		String qs = request.getParameter("qs");
		
		if(from == null || from.isEmpty()) from="";
		if(qs == null || qs.isEmpty()) {
			qs="";
		}else if(qs.equals("null")){
			
		}else from+= "?"+qs;
		
		if(error == null || error.isEmpty()) error="";
		String message = "";
		if(error.equals("1")) message = "아이디가 없거나 입력 오류입니다.";
		else if(error.equals("2")) message = "비밀번호 오류입니다.";
		else if(error.equals("5")) message = "입력하신 이메일로 ID를 보냈습니다.";
		else if(error.equals("6")) message = "임시번호를 이메일로 보냈습니다.";
		request.setAttribute("errorMessage", message);
		request.setAttribute("from", from);
		return url;
	}

}
