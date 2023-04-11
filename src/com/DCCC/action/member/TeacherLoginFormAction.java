package com.DCCC.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;

public class TeacherLoginFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/teacher/teacherForm.jsp";
		String error = request.getParameter("error");
		if(error == null || error.isEmpty()) error="";
		String message = "";
		if(error.equals("1")) message = "아이디가 없거나 입력 오류입니다.";
		else if(error.equals("2")) message = "비밀번호 오류입니다.";
		request.setAttribute("errorMessage", message);
		return url;
	}

}
