package com.DCCC.action.admin;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;
;

public class TeacherIdCheckAction implements Action{
	
	private TeacherService teacherService;
	public void setSearchTeacherService(TeacherService teacherService) {
		this.teacherService=teacherService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String resultStr = "";		
		String tch_id=request.getParameter("tch_id");
		
		TeacherVO teacher = teacherService.getTeacherById(tch_id);
		if(teacher!=null) {
			resultStr="DUPLICATED";
		}		
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(resultStr);
		out.close();
		
		return url;
	}

}
