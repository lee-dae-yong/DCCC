package com.DCCC.action.admin.facility;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.FacilityService;

public class AdminFacInfoRegistAction implements Action{
	private FacilityService facilityService;
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/admin/regist_success.jsp";
		
		String fac_picture = request.getParameter("fac_picture");
		String fac_capacity = request.getParameter("fac_capacity");
		String fac_introduce = request.getParameter("fac_introduce");
		String fac_floor = request.getParameter("fac_floor");
		String fac_name = request.getParameter("fac_name");
		String fac_size = request.getParameter("fac_size");
		String fac_qufen = request.getParameter("fac_qufen");
		String fac_category = request.getParameter("fac_category");
		
		FacilityVO facility = new FacilityVO();
		
		facility.setFac_picture(fac_picture);
		facility.setFac_capacity(fac_capacity);
		facility.setFac_introduce(fac_introduce);
		facility.setFac_floor(fac_floor);
		facility.setFac_name(fac_name);
		facility.setFac_size(fac_size);
		facility.setFac_qufen(fac_qufen);
		facility.setFac_category(fac_category);
		
		
		try {
			facilityService.registFacility(facility);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
