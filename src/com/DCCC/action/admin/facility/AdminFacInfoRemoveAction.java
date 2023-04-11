package com.DCCC.action.admin.facility;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.FacilityService;

public class AdminFacInfoRemoveAction implements Action{

	private FacilityService facilityService;
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/WEB-INF/views/admin/remove_success.jsp";
		
		
		String fac_no = request.getParameter("fac_no");
		
		
		facilityService.removeFacility(fac_no);
		
		return url;
	}

}
