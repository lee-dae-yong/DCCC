package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.ReservationViewDAO;
import com.DCCC.dto.AttendanceViewVO;
import com.DCCC.dto.ReservationViewVO;

public class ReservationViewServiceImpl implements ReservationViewService {

	private ReservationViewDAO reservationViewDAO;

	public ReservationViewDAO getReservationViewDAO() {
		return reservationViewDAO;
	}

	public void setReservationViewDAO(ReservationViewDAO reservationViewDAO) {
		this.reservationViewDAO = reservationViewDAO;
	}


	@Override
	public List<ReservationViewVO> getReservationViewList(String mem_id) throws SQLException {
		List<ReservationViewVO> reservationViewList = reservationViewDAO.selectReservationViewList(mem_id);
		
		return reservationViewList;
	}
	

	@Override
	public ReservationViewVO getReservationViewById(String mem_id) throws SQLException {
		ReservationViewVO reservation = reservationViewDAO.selectReservationViewById(mem_id);
		return reservation;
	}

	@Override
	public void remove(String mem_id) throws SQLException {
		reservationViewDAO.deleteReservationView(mem_id);
		
	}


}
