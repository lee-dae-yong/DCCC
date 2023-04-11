package com.DCCC.action.admin;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;

public class TeacherRegistAction implements Action {

	private TeacherService teacherService;
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url ="/WEB-INF/views/admin/teacher/regist_success.jsp";
		
		request.setCharacterEncoding("utf-8");
		
		String tch_id = request.getParameter("tch_id");
		String tch_picture = request.getParameter("tch_picture");
		String tch_pwd = request.getParameter("tch_pwd");
		String tch_name = request.getParameter("tch_name");
		String tch_phone = request.getParameter("tch_phone");
		String tch_license = request.getParameter("tch_license");
		
		TeacherVO teacher = new TeacherVO();
		teacher.setTch_id(tch_id);
		teacher.setTch_picture(tch_picture);
		teacher.setTch_pwd(tch_pwd);
		teacher.setTch_name(tch_name);
		teacher.setTch_phone(tch_phone);
		teacher.setTch_license(tch_license);
		
		try {
			teacherService.regist(teacher);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	} 

}
