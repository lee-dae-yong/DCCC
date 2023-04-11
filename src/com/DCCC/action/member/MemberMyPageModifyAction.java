package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.MemberService;

public class MemberMyPageModifyAction implements Action {

	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/member/list.do?mem_id=";
		
		url+=request.getParameter("mem_id");
		String mem_id=request.getParameter("mem_id");
		String mem_pwd=request.getParameter("mem_pwd");
		String mem_name=request.getParameter("mem_name");
		String mem_birth=request.getParameter("mem_birth");
		String mem_email=request.getParameter("mem_email");
		String mem_phone=request.getParameter("mem_phone");
		
		MemberVO member = new MemberVO();
		member.setMem_id(mem_id);
		member.setMem_pwd(mem_pwd);
		member.setMem_name(mem_name);
		member.setMem_birth(mem_birth);
		member.setMem_email(mem_email);
		member.setMem_phone(mem_phone);
		
		try {
			memberService.modify(member);
			
			HttpSession session = request.getSession();			
			MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
			if(loginUser!=null && member.getMem_id().equals(loginUser.getMem_id())) {
				MemberVO targetObj = memberService.getMemberById(mem_id);
				session.setAttribute("loginUser", targetObj);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
