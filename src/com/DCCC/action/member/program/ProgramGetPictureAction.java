package com.DCCC.action.member.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ProgramVO;
import com.DCCC.service.ProgramService;
import com.DCCC.utils.FileDownloadResolver;
import com.DCCC.utils.GetUploadPath;

public class ProgramGetPictureAction implements Action{
	private ProgramService programService;

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String prg_code=request.getParameter("prg_code");
		ProgramVO program=programService.getProgram(prg_code);
		
		String fileName=program.getPrg_picture();
		String savedPath=GetUploadPath.getUploadPath("program.picture.upload");
		
		FileDownloadResolver.sendFile(fileName, savedPath, request, response);
		return url;
	}
	
	
	
}
