package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.MemberService;

public class MemberMyPageModifyFormAction implements Action {
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/WEB-INF/views/member/modify.jsp";
		
		String mem_id = request.getParameter("mem_id");
		
		try {
			MemberVO member = memberService.getMemberById(mem_id);
			request.setAttribute("member", member);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
