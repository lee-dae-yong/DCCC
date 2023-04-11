package com.DCCC.action.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.dto.ReservationViewVO;
import com.DCCC.service.ReservationViewService;

public class ReservationListAction implements Action {

	private ReservationViewService reservationViewService;

	public void setReservationViewService(ReservationViewService reservationViewService) {
		this.reservationViewService = reservationViewService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/member/member/relist.jsp";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		String mem_id = loginUser.getMem_id();
		List<ReservationViewVO> reservationViewList = reservationViewService.getReservationViewList(mem_id);
		request.setAttribute("reservationViewList", reservationViewList);
		return url;
	}

}
