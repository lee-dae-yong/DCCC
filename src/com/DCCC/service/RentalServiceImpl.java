package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.DCCC.dao.RentalDAO;
import com.DCCC.dto.BookingVO;
import com.DCCC.dto.FacilityVO;

public class RentalServiceImpl implements RentalService{

	private RentalDAO rentalDAO;
	
	public void setRentalDAO(RentalDAO rentalDAO) {
		this.rentalDAO = rentalDAO;
	}

	@Override
	public List<FacilityVO> getFacilityList() throws SQLException {
		List<FacilityVO> facilityList = rentalDAO.selectFacilityList();
		return facilityList;
	}

	@Override
	public List<FacilityVO> getFacilityListByFacName(String fac_name) throws SQLException {
		List<FacilityVO> faciliList = rentalDAO.selectFacilityListByFacName(fac_name);
		return faciliList;
	}

	@Override
	public List<BookingVO> getBookingList(Map<String, String> dataMap) throws SQLException {
		List<BookingVO> bookingList = rentalDAO.selectBookingList(dataMap);
				
		return bookingList;
	}

	@Override
	public int getBookingCheckDuple(Map<String, String> dataMap) throws SQLException {
		int result = rentalDAO.selectBookingDuple(dataMap);
		return result;
	}

	@Override
	public String registRental(Map<String, Object> dataMap) throws SQLException {
		String book_no = Integer.toString(rentalDAO.selectBookingSeq());
		dataMap.put("book_no", book_no);
		rentalDAO.insertRental(dataMap);
		
		return book_no;
	}
	
}
