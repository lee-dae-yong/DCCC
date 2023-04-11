package com.DCCC.action.admin;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.TeacherService;

public class TeacherRemoveAction implements Action {

	private TeacherService teacherService;

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/admin/teacher/remove_success.jsp";
		String tch_id = request.getParameter("tch_id");

		try {
			teacherService.remove(tch_id);

		} catch (SQLException e) {

			e.printStackTrace();

		}
		return url;
	}

}
