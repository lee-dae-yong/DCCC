package com.DCCC.action.admin.facility;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.SearchCriteria;
import com.DCCC.action.Action;
import com.DCCC.service.FacilityService;

public class AdminFacInfoListAction implements Action{
	private FacilityService facilityService;
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/admin/list_fac_info.jsp";
		
		String searchType=request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam=request.getParameter("page");
		
		
		
		if(perPageNumParam==null || perPageNumParam.isEmpty())perPageNumParam="9";
		if(pageParam==null || pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="";
		if(keyword==null) keyword="";
		
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		
		
		try {
			// 처리
			Map<String, Object> dataMap = facilityService.getFacilityList(cri);
			request.setAttribute("dataMap", dataMap);

			return url;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
