package com.DCCC.action.admin.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ProgramVO;
import com.DCCC.service.ProgramService;

public class AdminProgramModifyFormAction implements Action  {
	private ProgramService programService;

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/admin/program/modify.jsp";
		
		String prg_code=request.getParameter("prg_code");
		
		ProgramVO program=programService.getProgram(prg_code);
		
		String[]prg_times=program.getPrg_time().split(":");
		
		
		
		request.setAttribute("program", program);
		request.setAttribute("prg_hour", prg_times[0]);
		request.setAttribute("prg_minute", prg_times[1]);
		
		return url;
	}
	
	
}
