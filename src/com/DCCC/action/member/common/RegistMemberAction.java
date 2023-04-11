package com.DCCC.action.member.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.SessionService;

public class RegistMemberAction implements Action{

	private SessionService sessionService;
	
	public void setSessionService(SessionService sessionService) {
		this.sessionService = sessionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/common/regist_member_success.jsp";
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		MemberVO member = new MemberVO();
		
		member.setMem_id(id);
		member.setMem_pwd(password);
		member.setMem_name(name);
		member.setMem_birth(birth);
		member.setMem_phone(phone);
		member.setMem_email(email);
		
		sessionService.registMember(member);
		return url;
	}
	
}
