package com.DCCC.action.member.rental;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.RentalService;
import com.DCCC.view.JSONViewResolver;

public class MemberRentalGetListAction implements Action{

	private RentalService rentalService;
	
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String fac_name = request.getParameter("fac_name");
		
		List<FacilityVO> sub_facilityList = rentalService.getFacilityListByFacName(fac_name);
		
		JSONViewResolver.view(response, sub_facilityList);
		
		return url;
	}

}
