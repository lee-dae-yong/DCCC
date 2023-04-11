package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.BookingVO;
import com.DCCC.dto.FacilityVO;

public class RentalDAOImpl implements RentalDAO{

	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<FacilityVO> selectFacilityList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<FacilityVO> facilityList = session.selectList("Rental-Mapper.selectFacilityList");
			return facilityList;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public List<FacilityVO> selectFacilityListByFacName(String fac_name) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<FacilityVO> facilityList = session.selectList("Rental-Mapper.selectFacilityListByFacName",fac_name);
			return facilityList;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public List<BookingVO> selectBookingList(Map<String, String> dataMap) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<BookingVO> bookingList = session.selectList("Rental-Mapper.selectBookingList",dataMap);
			return bookingList;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public int selectBookingDuple(Map<String, String> dataMap) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int result = session.selectOne("Rental-Mapper.selectBookingDuple",dataMap);
			return result;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public int selectBookingSeq() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int result = session.selectOne("Rental-Mapper.selectBookingSeq");
			return result;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void insertRental(Map<String, Object> dataMap) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Rental-Mapper.insertRental",dataMap);
		}finally {
			if(session!=null)session.close();
		}
	}

}
