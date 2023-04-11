package com.DCCC.action.admin;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;

public class TeacherModifyFormAction implements Action {

	private TeacherService teacherService;
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url ="/WEB-INF/views/admin/teacher/modify.jsp";
		
		String tch_id = request.getParameter("tch_id");
		
		try {
			TeacherVO teacher = teacherService.getTeacherById(tch_id);
			
			request.setAttribute("teacher", teacher);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
