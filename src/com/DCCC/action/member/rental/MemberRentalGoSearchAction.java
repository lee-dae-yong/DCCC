package com.DCCC.action.member.rental;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.RentalService;

public class MemberRentalGoSearchAction implements Action{

	private RentalService rentalService;
	
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/rental/goSearch.jsp";
		
		String fac_no = request.getParameter("fac_no");
		String fac_name = request.getParameter("fac_name");
		
		List<FacilityVO> facilityList = rentalService.getFacilityListByFacName(fac_name);
		
		request.setAttribute("facilityList", facilityList);
		request.setAttribute("fac_no", fac_no);
		return url;
	}

}
