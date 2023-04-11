package com.DCCC.action.member.rental;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.RentalService;

public class MemberRentalSearchAction implements Action{

	private RentalService rentalService;
	
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/rental/rentalSearch.jsp";
		
		List<FacilityVO> facilityList = rentalService.getFacilityList();
		
		request.setAttribute("facilityList", facilityList);
		
		return url;
	}

}
