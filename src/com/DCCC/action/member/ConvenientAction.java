package com.DCCC.action.member;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.SearchCriteria;
import com.DCCC.action.Action;
import com.DCCC.service.FacilityService;

public class ConvenientAction implements Action {

	private FacilityService facilityService;
	
	
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/WEB-INF/views/member/convenient.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam = request.getParameter("page");
		
		if(perPageNumParam == null || perPageNumParam.isEmpty())perPageNumParam="10";
		if(pageParam == null || pageParam.isEmpty())pageParam="1";
		if(searchType == null) searchType="";
		if(keyword==null) keyword="";
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		
		try {
			Map<String, Object> dataMap = facilityService.getFacilityList(cri);
			request.setAttribute("dataMap", dataMap);
		} catch(SQLException e) {
			e.printStackTrace();
			throw e;
		}
		
		return url;
	}

}
