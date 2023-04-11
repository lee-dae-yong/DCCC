package com.DCCC.action.admin.facility;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.FacilityService;

public class AdminFacInfoModifyFormAction implements Action{

	private FacilityService facilityService;
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/admin/modify_fac_info.jsp";
		
		String fac_no = request.getParameter("fac_no");
		
		/*
		 * try { FacilityVO facility = facilityService.getFacilityByFac_no(fac_no);
		 * 
		 * request.setAttribute("facility",facility);
		 * 
		 * } catch (SQLException e) { e.printStackTrace(); } return url;
		 */
		
		FacilityVO facility = facilityService.getFacilityByFac_no(fac_no);

		request.setAttribute("facility", facility);
		
		return url;
	}

}
