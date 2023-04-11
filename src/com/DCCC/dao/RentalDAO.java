package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.DCCC.dto.BookingVO;
import com.DCCC.dto.FacilityVO;

public interface RentalDAO {

	List<FacilityVO> selectFacilityList() throws SQLException;

	List<FacilityVO> selectFacilityListByFacName(String fac_name) throws SQLException;

	List<BookingVO> selectBookingList(Map<String, String> dataMap) throws SQLException;

	int selectBookingDuple(Map<String, String> dataMap) throws SQLException;

	int selectBookingSeq() throws SQLException;

	void insertRental(Map<String, Object> dataMap) throws SQLException;

}
