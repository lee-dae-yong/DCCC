package com.DCCC.action.admin;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.AdminVO;
import com.DCCC.service.AdminService;

public class AdminModifyAction implements Action {

	private AdminService adminService;
	
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url  ="redirect:/admin/admin/detail.do?adm_id=";
		
		url += request.getParameter("adm_id");
		String adm_id = request.getParameter("adm_id");
		String adm_pwd = request.getParameter("adm_pwd");
		String adm_name = request.getParameter("adm_name");
		String adm_phone = request.getParameter("adm_phone");
		String adm_email = request.getParameter("adm_email");
		
		AdminVO admin = new AdminVO();
		admin.setAdm_id(adm_id);
		admin.setAdm_pwd(adm_pwd);
		admin.setAdm_name(adm_name);
		admin.setAdm_phone(adm_phone);
		admin.setAdm_email(adm_email);
		
		try {
			adminService.modify(admin);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
