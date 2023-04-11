package com.DCCC.action.admin.program;

import java.io.File;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import com.DCCC.action.Action;
import com.DCCC.dto.ProgramVO;
import com.DCCC.service.ProgramService;
import com.DCCC.utils.FileUploadResolver;
import com.DCCC.utils.GetUploadPath;
import com.DCCC.utils.MultipartHttpServletRequestParser;

public class AdminProgramModifyAction implements Action {
	private ProgramService programService;
	
	public ProgramService getProgramService() {
		return programService;
	}
	
	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}
	
	// 업로드 파일 환경 설정
		private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
		private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
		private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="redirect:/admin/program/detail.do?prg_code=";
		
		MultipartHttpServletRequestParser multiReq 
			= new MultipartHttpServletRequestParser(request,
				 				MEMORY_THRESHOLD, MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		
		url+=multiReq.getParameter("prg_code");
		
		int prg_capacity=Integer.parseInt(multiReq.getParameter("prg_capacity"));
		
		
		
		String[]prg_days=multiReq.getParameterValues("prg_day");
		String prg_day="";
		
		for(int i=0; i<prg_days.length;i++) {
			prg_day+=prg_days[i];
			if(prg_days.length - i!=1) {
				prg_day+=",";
			}
		}
		
		
		String[]prg_times=multiReq.getParameterValues("prg_time");
		String prg_time="";
		
		
		for(int i=0; i<prg_times.length;i++) {
			prg_time+=prg_times[i];
			if(prg_times.length - i!=1) {
				prg_time+=":";
			}
		}
		
		ProgramVO program=new ProgramVO();
		
		program.setPrg_code(multiReq.getParameter("prg_code"));
		program.setPrg_kind(multiReq.getParameter("prg_kind"));
		program.setPrg_capacity(prg_capacity);
		program.setPrg_name(multiReq.getParameter("prg_name"));
		program.setPrg_price(multiReq.getParameter("prg_price"));
		program.setPrg_day(prg_day);
		program.setPrg_time(prg_time);
		program.setTch_id(multiReq.getParameter("tch_id"));
		
		
		
		
		FileItem picture = multiReq.getFileItem("prg_picture");
		if(picture.getSize()>0) { //사진변경
			//저장경로
			String uploadPath = GetUploadPath.getUploadPath("program.picture.upload");
						
			//기존 사진이미지 삭제
			String oldPicture = multiReq.getParameter("oldPicture");
			File deleteFile = new File(uploadPath,oldPicture);
			if(deleteFile.exists()) {
				deleteFile.delete();
			}
			
			//최근 사진이미지 저장
			List<File> fileList 
			=  FileUploadResolver.fileUpload(multiReq.getFileItems("prg_picture"),uploadPath);
			File saveFile = fileList.get(0);
						
			//최근 사진이미지 파일명 vo에 추가
			program.setPrg_picture(saveFile.getName());
		}else {
			program.setPrg_picture(multiReq.getParameter("oldPicture"));
		}
		
		
		try {
			programService.modifyProgram(program);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}
	
}
