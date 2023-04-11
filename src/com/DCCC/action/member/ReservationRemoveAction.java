package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.AttendanceService;

public class ReservationRemoveAction implements Action {
	
	private AttendanceService attendanceService;
	public void setAttendanceService(AttendanceService attendanceService) {
		this.attendanceService = attendanceService;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/member/remove_success.jsp";
		
		String mem_id = request.getParameter("mem_id");
		try {
			attendanceService.removeAttendance(mem_id);
			
		}catch(SQLException e) {
			
		}
		return url;
	}

}
