package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.BookingViewVO;

public class BookingViewDAOImpl implements BookingViewDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public BookingViewVO selectBookingViewById(String book_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		BookingViewVO bookingView = null;

		try {
			bookingView = session.selectOne("Booking-Mapper.selectBookingViewById", book_no);
			return bookingView;

		} finally {
			session.close();
		}

	}

	@Override
	public List<BookingViewVO> selectBookingViewList(String mem_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<BookingViewVO> bookingViewList = null;
		try {
			bookingViewList = session.selectList("Booking-Mapper.selectBookingViewList", mem_id);
			return bookingViewList;
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteBookingView(String book_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Booking-Mapper.deleteBookingView", book_no);
		} finally {
			session.close();
		}
	}

}
