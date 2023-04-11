package com.DCCC.action.member;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.AttendanceViewVO;
import com.DCCC.service.AttendanceViewService;

public class TeacherAttendanceViewAction implements Action {

	private AttendanceViewService attendanceViewService;
	
	public void setAttendanceViewService(AttendanceViewService attendanceViewService) {
		this.attendanceViewService = attendanceViewService;
	
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/WEB-INF/views/member/teacher/attendance.jsp";
		
		String prg_code=request.getParameter("prg_code");
		
		if(prg_code==null )prg_code="";
		

		try {
			List<AttendanceViewVO> attendanceViewList = attendanceViewService.getAttendanceViewList(prg_code);
			request.setAttribute("attendanceViewList", attendanceViewList);
			return url;

		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}

