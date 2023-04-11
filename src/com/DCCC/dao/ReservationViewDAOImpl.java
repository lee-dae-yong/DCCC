package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.AttendanceViewVO;
import com.DCCC.dto.ReservationViewVO;

public class ReservationViewDAOImpl implements ReservationViewDAO {

	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;

	}

	@Override
	public ReservationViewVO selectReservationViewById(String mem_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		ReservationViewVO reservation = null;
		try {
			reservation = session.selectOne("Reservation-Mapper.selectReservationViewById", mem_id);
			return reservation;
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteReservationView(String mem_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Reservation-Mapper.deleteReservationView", mem_id);
		} finally {
			session.close();
		}
	}

	@Override
	public int selectReservationViewListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int count = session.selectOne("Reservation-Mapper.selectReservationViewListCount", cri);
			return count;
		} finally {
			session.close();
		}
	}

	@Override
	public List<ReservationViewVO> selectReservationViewList(String mem_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<ReservationViewVO> reservationViewList = null;

		try {
			reservationViewList = session.selectList("Reservation-Mapper.selectReservationViewList", mem_id);
		} finally {
			session.close();
		}
		return reservationViewList;

	}

}