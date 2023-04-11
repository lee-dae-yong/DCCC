package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.MemberService;


public class MemberRemoveAction implements Action{

	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/member/remove_success.jsp";
		
		String mem_id = request.getParameter("mem_id");
		
		try {
			memberService.remove(mem_id);
			
			HttpSession session = request.getSession();
			MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
			if(loginUser!=null && mem_id.equals(loginUser.getMem_id())) {
				session.invalidate();
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
