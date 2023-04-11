package com.DCCC.action.member.board.freeboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.FreeboardService;

public class FreeboardRemoveAction implements Action{

	private FreeboardService freeboardService;
	
	public void setFreeboardService(FreeboardService freeboardService) {
		this.freeboardService = freeboardService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/freeboard/remove_success.jsp";
		
		String no = request.getParameter("no");
		
		freeboardService.removeFreeboard(no);
		return url;
	}

}
