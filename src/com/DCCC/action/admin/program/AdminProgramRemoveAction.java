package com.DCCC.action.admin.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.AttendanceService;
import com.DCCC.service.ProgramService;

public class AdminProgramRemoveAction implements Action {
	private ProgramService programService;
	private AttendanceService attendanceService;

	public AttendanceService getAttendanceService() {
		return attendanceService;
	}

	public void setAttendanceService(AttendanceService attendanceService) {
		this.attendanceService = attendanceService;
	}

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/admin/program/remove_success.jsp";
		
		String prg_code=request.getParameter("prg_code");
		
		attendanceService.removeAttendanceForProgram(prg_code);
		programService.removeProgram(prg_code);
		
		request.setAttribute("prg_code", prg_code);
		
		return url;
	}
	
	
}
