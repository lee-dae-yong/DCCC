package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.BookingViewVO;

public interface BookingViewService {

	List<BookingViewVO> getBookingViewList(String mem_id) throws SQLException;

	BookingViewVO getBookingViewById(String book_no) throws SQLException;

	void remove(String book_no) throws SQLException;

}
