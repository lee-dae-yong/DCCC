package com.DCCC.action.member.rental;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.BookingVO;
import com.DCCC.service.RentalService;
import com.DCCC.view.JSONViewResolver;

public class MemberRentalCheckDuplicationAction implements Action{

	private RentalService rentalService;
	
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String book_date = request.getParameter("book_date");
		String member_id = request.getParameter("member_id");
		
		Map<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("book_date", book_date);
		dataMap.put("member_id", member_id);
		int result = rentalService.getBookingCheckDuple(dataMap);
		
		
		JSONViewResolver.view(response, result);
		
		return url;
	}

	
	
}
