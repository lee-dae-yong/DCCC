package com.DCCC.action.member.rental;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.RentalService;

public class MemberRentalRegistAction implements Action{

	private RentalService rentalService;
	
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/rental/regist_success.jsp";
		
		String book_date = request.getParameter("book_date");
		String facility_no = request.getParameter("facility_no");
		String member_id = request.getParameter("member_id");
		String book_time = request.getParameter("book_time");
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("book_date", book_date);
		dataMap.put("facility_no", facility_no);
		dataMap.put("member_id", member_id);
		dataMap.put("book_time", book_time);
		
		String book_no = rentalService.registRental(dataMap);
		
		request.setAttribute("member_id", member_id);
		request.setAttribute("book_no", book_no);
		return url;
	}

	
}
