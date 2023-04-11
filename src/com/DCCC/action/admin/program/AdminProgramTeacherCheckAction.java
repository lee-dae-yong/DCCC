package com.DCCC.action.admin.program;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;

public class AdminProgramTeacherCheckAction implements Action {
	private TeacherService teacherService;

	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		TeacherVO teacher=teacherService.getTeacherById(request.getParameter("tch_id"));

		String resultStr = "";
		
		if(teacher!=null) {
			resultStr="YES";
		}
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(resultStr);
		out.close();
//		String id=request.getParameter("id");
//		
//		MemberVO member = memberService.getMember(id);
//		if(member!=null) {
//			resultStr="DUPLICATED";
//		}		
//		
//		response.setContentType("text/plain;charset=utf-8");
//		PrintWriter out=response.getWriter();
//		out.print(resultStr);
//		out.close();
		
		return url;
	}
	
	
}
