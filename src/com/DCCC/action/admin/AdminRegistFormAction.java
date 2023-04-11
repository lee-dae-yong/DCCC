package com.DCCC.action.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.AdminService;

public class AdminRegistFormAction implements Action {
	private AdminService adminService;
	

	public AdminService getAdminService() {
		return adminService;
	}


	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/admin/regist.jsp";
		
		List<String>depList=adminService.getAdm_dep();
		request.setAttribute("depList", depList);
		
		return url;
	}

}
