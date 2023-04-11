package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.BookingViewVO;

public interface BookingViewDAO {

	BookingViewVO selectBookingViewById(String mem_id) throws SQLException;

	List<BookingViewVO> selectBookingViewList(String book_no) throws SQLException;

	void deleteBookingView(String book_no) throws SQLException;

}
