package com.DCCC.action.member.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.AdminVO;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.SessionService;

public class LoginAction implements Action{

	private SessionService sessionService;
	
	public void setSessionService(SessionService sessionService) {
		this.sessionService = sessionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/common/login_out_success.jsp";
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String loginSelect =request.getParameter("loginSelect");

		String from = request.getParameter("from");
		if(from == null || from.isEmpty()) from="";
		
		System.out.println("from + " +from);
		request.setAttribute("from", from);
		
		if(loginSelect.equals("member")) {
			int result = sessionService.memberLogin(id, pwd);
			switch (result) {
			case 0: // 로그인 성공
				MemberVO loginUser = sessionService.getMember(id);
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				session.setMaxInactiveInterval(60 * 10);
				if(from == null || from.isEmpty()) {
				}else {
					url="redirect:"+from;
				}
				break;
			case 1: // 아이디 불일치
				url = "redirect:/member/loginForm.do?error=1&from=" + from;
				break;
			case 2: // 패스워드 불일치
				url = "redirect:/member/loginForm.do?error=2&from=" + from;
				break;
			}
		}else {
			url = "/WEB-INF/views/common/admin_login_success.jsp";
			int result = sessionService.adminLogin(id, pwd);
			switch (result) {
			case 0: // 로그인 성공
				AdminVO loginAdmin = sessionService.getAdmin(id);
				HttpSession session = request.getSession();
				session.setAttribute("loginAdmin", loginAdmin);
				session.setMaxInactiveInterval(60 * 10);
				if(from == null || from.isEmpty()) {
				}else {
					url="redirect:"+from;
				}
				break;
			case 1: // 아이디 불일치
				url = "redirect:/member/loginForm.do?error=1&from=" + from;
				break;
			case 2: // 패스워드 불일치
				url = "redirect:/member/loginForm.do?error=2&from=" + from;
				break;
			}
		}
		
		return url;
	}

}
