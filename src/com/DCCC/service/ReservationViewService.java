package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.ReservationViewVO;

public interface ReservationViewService {

	List<ReservationViewVO> getReservationViewList(String mem_id) throws SQLException;
	
	ReservationViewVO getReservationViewById(String mem_id) throws SQLException;
	
	void remove(String mem_id) throws SQLException;
}
