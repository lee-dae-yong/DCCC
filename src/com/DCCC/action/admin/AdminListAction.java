package com.DCCC.action.admin;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.SearchCriteria;
import com.DCCC.action.Action;
import com.DCCC.service.AdminService;

public class AdminListAction implements Action {

	private AdminService adminService;
	
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/WEB-INF/views/admin/admin/list.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam = request.getParameter("page");
		
		if (perPageNumParam == null || perPageNumParam.isEmpty())perPageNumParam="10";
		if (pageParam == null || pageParam.isEmpty())pageParam="1";
		if (searchType == null) searchType = "";
		if (keyword == null) keyword = "";
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		

		try {
			Map<String,Object> dataMap = adminService.getAdminList(cri);
			request.setAttribute("dataMap", dataMap);
			return url;

		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}
