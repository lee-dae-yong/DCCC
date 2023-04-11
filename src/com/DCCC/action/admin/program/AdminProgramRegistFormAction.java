package com.DCCC.action.admin.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.ProgramService;

public class AdminProgramRegistFormAction implements Action {
	private ProgramService programService;

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/admin/program/regist.jsp";
		return url;
	}
	
	
}
