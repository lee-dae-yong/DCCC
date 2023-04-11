package com.DCCC.action.admin;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.AdminService;

public class AdminRemoveAction implements Action {

	private AdminService adminService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/admin/admin/remove_success.jsp";
		String adm_id = request.getParameter("adm_id");

		try {
			adminService.remove(adm_id);

		} catch (SQLException e) {

			e.printStackTrace();

		}
		return url;
	}

}
