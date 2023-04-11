package com.DCCC.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;

public class TeacherLoginAction implements Action {
	
	private TeacherService teacherService;
	public void setSearchTeacherService(TeacherService teacherService) {
		this.teacherService=teacherService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url="redirect:/open/teacher/attendance.do";
	
		String tch_id = request.getParameter("tch_id");
		String tch_pwd = request.getParameter("tch_pwd");
		
		int result = teacherService.login(tch_id, tch_pwd);
		
		
			switch (result) {
			case 0: // 로그인 성공
				TeacherVO loginTeacher = teacherService.getTeacherById(tch_id);
				HttpSession session = request.getSession();
				session.setAttribute("loginTeacher", loginTeacher);
				session.setMaxInactiveInterval(60 * 10);
				break;
			case 1: // 아이디 불일치
				url = "redirect:/open/teacher/teacherForm.do?error=1";
				break;
			case 2: // 패스워드 불일치
				url = "redirect:/open/teacher/teacherForm.do?error=2";
				break;
			}
	
			return url;
	}

}
