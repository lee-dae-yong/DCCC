package com.DCCC.action.admin;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.AdminVO;
import com.DCCC.service.AdminService;

import javafx.scene.chart.PieChart.Data;


public class AdminRegistAction implements Action {
	
	private AdminService adminService;
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url ="/WEB-INF/views/admin/admin/regist_success.jsp";
		
		request.setCharacterEncoding("utf-8");
		String adm_pic=request.getParameter("adm_pic");
		String adm_id = request.getParameter("adm_id");
		String adm_pwd = request.getParameter("adm_pwd");
		String adm_name = request.getParameter("adm_name");
		String adm_phone = request.getParameter("adm_phone");
		String adm_email = request.getParameter("adm_email");
		String adm_rank = request.getParameter("adm_rank");
		String adm_dep = request.getParameter("adm_dep");
		
		AdminVO admin = new AdminVO();
		admin.setAdm_id(adm_id);
		admin.setAdm_pwd(adm_pwd);
		admin.setAdm_name(adm_name);
		admin.setAdm_phone(adm_phone);
		admin.setAdm_email(adm_email);
		admin.setAdm_rank(adm_rank);
		admin.setAdm_dep(adm_dep);
		admin.setAdm_pic(adm_pic);
		try {
			adminService.regist(admin);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	} 

}
