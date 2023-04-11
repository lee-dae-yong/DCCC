package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.AttendanceService;
import com.DCCC.service.BookingViewService;

public class BookingRemoveAction implements Action {
	
	private BookingViewService bookingViewService;
	public void setBookingViewService(BookingViewService bookingViewService) {
		this.bookingViewService = bookingViewService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/member/boremove_success.jsp";
		
		String book_no = request.getParameter("book_no");
		try {
			bookingViewService.remove(book_no);
			
		}catch(SQLException e) {
			
		}
		return url;
	}

}
