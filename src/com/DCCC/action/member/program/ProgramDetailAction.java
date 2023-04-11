package com.DCCC.action.member.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ProgramDetailVO;
import com.DCCC.service.ProgramDetailService;

public class ProgramDetailAction implements Action {
	private ProgramDetailService programDetailService;
	

	public ProgramDetailService getProgramDetailService() {
		return programDetailService;
	}


	public void setProgramDetailService(ProgramDetailService programDetailService) {
		this.programDetailService = programDetailService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/member/program/detail.jsp";
		
		String prg_code=request.getParameter("prg_code");
		
		ProgramDetailVO program=programDetailService.getProgramDetail(prg_code);
		
		request.setAttribute("program", program);
		
		return url;
	}
	
	
	
	
	
}
