package com.DCCC.action.admin.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ProgramVO;
import com.DCCC.service.ProgramService;

public class AdminProgramRegistAction implements Action {
	private ProgramService programService;

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/admin/program/regist_success.jsp";
		
		ProgramVO program=new ProgramVO();
		int prg_capacity=Integer.parseInt(request.getParameter("prg_capacity"));
		
		String[]prg_days=request.getParameterValues("prg_day");
		String prg_day="";
		for(int i=0; i<prg_days.length;i++) {
			prg_day+=prg_days[i];
			if(prg_days.length - i!=1) {
				prg_day+=",";
			}
		}
		
		String[]prg_times=request.getParameterValues("prg_time");
		String prg_time="";
		for(int i=0; i<prg_times.length;i++) {
			prg_time+=prg_times[i];
			if(prg_times.length - i!=1) {
				prg_time+=":";
			}
		}
		
		
		
		program.setPrg_code(programService.getPrg_codeNextVal());
		program.setPrg_kind(request.getParameter("prg_kind"));
		program.setPrg_capacity(prg_capacity);
		program.setPrg_name(request.getParameter("prg_name"));
		program.setPrg_price(request.getParameter("prg_price"));
		program.setPrg_day(prg_day);
		program.setPrg_time(prg_time);
		program.setTch_id(request.getParameter("tch_id"));
		program.setPrg_picture(request.getParameter("prg_picture"));
		
		try {
		programService.registProgram(program);
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		
		return url;
	}
	
	
}
