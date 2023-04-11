package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.ReservationViewVO;

public interface ReservationViewDAO {

	ReservationViewVO selectReservationViewById(String mem_id) throws SQLException;
	
	List<ReservationViewVO> selectReservationViewList(String mem_id) throws SQLException;
	
	void deleteReservationView(String mem_id) throws SQLException;
	
	int selectReservationViewListCount(SearchCriteria cri) throws SQLException;
	
	
}