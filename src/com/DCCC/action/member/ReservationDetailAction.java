package com.DCCC.action.member;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ReservationViewVO;
import com.DCCC.service.ReservationViewService;

public class ReservationDetailAction implements Action {

	private ReservationViewService reservationViewService;

	public void setReservationViewService(ReservationViewService reservationViewService) {
		this.reservationViewService = reservationViewService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/member/detail.jsp";

		String mem_id = request.getParameter("mem_id");
		try {

			ReservationViewVO reservation = reservationViewService.getReservationViewById(mem_id);
			request.setAttribute("reservation", reservation);
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return url;
	}

}
