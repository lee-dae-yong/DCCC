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

public class MemberRentalCheckTimeAction implements Action{

	private RentalService rentalService;
	
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String fac_no = request.getParameter("fac_no");
		String booking_date = request.getParameter("fac_date");
		
		Map<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("fac_no", fac_no);
		dataMap.put("book_date", booking_date);
		List<BookingVO> bookingList = rentalService.getBookingList(dataMap);
		
		
		if(bookingList!=null && bookingList.size()>0) {
			JSONViewResolver.view(response, bookingList);
		}
		
		return url;
	}

	
	
}
