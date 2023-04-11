package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.BookingViewVO;
import com.DCCC.service.BookingViewService;

public class BookingDetailAction implements Action {

	private BookingViewService bookingViewService;
	public void setBookingViewService(BookingViewService bookingViewService) {
		this.bookingViewService = bookingViewService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/member/bodetail.jsp";

		String book_no = request.getParameter("book_no");
		try {

			BookingViewVO booking = bookingViewService.getBookingViewById(book_no);
			request.setAttribute("booking", booking);
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return url;
	}

}
