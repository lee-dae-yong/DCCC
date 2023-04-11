package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dao.BookingViewDAO;
import com.DCCC.dto.BookingViewVO;

public class BookingViewServiceImpl implements BookingViewService {

	private BookingViewDAO bookingViewDAO;
	public void setBookingViewDAO(BookingViewDAO bookingViewDAO) {
		this.bookingViewDAO = bookingViewDAO;
	}
	
	@Override
	public List<BookingViewVO> getBookingViewList(String mem_id) throws SQLException {
		List<BookingViewVO> bookingViewList = bookingViewDAO.selectBookingViewList(mem_id);
		return bookingViewList;
	}

	@Override
	public BookingViewVO getBookingViewById(String book_no) throws SQLException {
		BookingViewVO bookingView = bookingViewDAO.selectBookingViewById(book_no);
		return bookingView;
	}

	@Override
	public void remove(String book_no) throws SQLException {
		bookingViewDAO.deleteBookingView(book_no);
	}

}
