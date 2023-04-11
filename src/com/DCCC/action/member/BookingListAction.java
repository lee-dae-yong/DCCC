package com.DCCC.action.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.BookingViewVO;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.BookingViewService;

public class BookingListAction implements Action {
	
	private BookingViewService bookingViewService;
	public void setBookingViewService(BookingViewService bookingViewService) {
		this.bookingViewService = bookingViewService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/member/member/bolist.jsp";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		String mem_id = loginUser.getMem_id();
		List<BookingViewVO> bookingViewList = bookingViewService.getBookingViewList(mem_id);
		request.setAttribute("bookingViewList", bookingViewList);
		return url;
	}

}
