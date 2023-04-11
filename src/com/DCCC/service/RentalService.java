package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.DCCC.dto.BookingVO;
import com.DCCC.dto.FacilityVO;

public interface RentalService {

	List<FacilityVO> getFacilityList() throws SQLException;

	List<FacilityVO> getFacilityListByFacName(String fac_name) throws SQLException;

	List<BookingVO> getBookingList(Map<String, String> dataMap) throws SQLException;

	int getBookingCheckDuple(Map<String, String> dataMap) throws SQLException;

	String registRental(Map<String, Object> dataMap) throws SQLException;

}
