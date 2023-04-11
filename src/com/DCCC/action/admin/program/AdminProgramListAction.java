package com.DCCC.action.admin.program;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ProgramVO;
import com.DCCC.service.ProgramService;

public class AdminProgramListAction implements Action {
	private ProgramService programService;

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/admin/program/list.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		
		if(searchType==null)searchType="";
		if(keyword==null)keyword="";
		
		List<ProgramVO>programList=programService.getProgramList(searchType, keyword);
		List<String>programKinds=programService.getProgramKind();
		request.setAttribute("programList", programList);
		request.setAttribute("programKinds", programKinds);
		return url;
	}
	
	
}
