package com.DCCC.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;
import com.DCCC.utils.FileDownloadResolver;
import com.DCCC.utils.GetUploadPath;


public class TeacherGetPictureAction implements Action{
	private TeacherService teacherService;
	public void setSearchTeacherService(TeacherService teacherService) {
		this.teacherService=teacherService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String tch_id = request.getParameter("tch_id");
		TeacherVO teacher = teacherService.getTeacherById(tch_id);
		
		String fileName = teacher.getTch_picture();		
		String savedPath = GetUploadPath.getUploadPath("teacher.picture.upload");	
		
		FileDownloadResolver.sendFile(fileName,savedPath,request,response);
		
		return url;
	}

}
