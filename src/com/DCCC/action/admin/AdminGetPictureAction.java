package com.DCCC.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.AdminVO;
import com.DCCC.service.AdminService;
import com.DCCC.utils.FileDownloadResolver;
import com.DCCC.utils.GetUploadPath;

public class AdminGetPictureAction implements Action{
	private AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String adm_id = request.getParameter("adm_id");
		AdminVO admin= adminService.getAdminById(adm_id);
		
		String fileName = admin.getAdm_pic();
		String savedPath = GetUploadPath.getUploadPath("admin.picture.upload");	
		
		FileDownloadResolver.sendFile(fileName,savedPath,request,response);
		
		return url;
	}
	
	
	
}
