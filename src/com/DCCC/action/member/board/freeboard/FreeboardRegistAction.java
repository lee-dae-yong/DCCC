package com.DCCC.action.member.board.freeboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FreeboardVO;
import com.DCCC.service.FreeboardService;

public class FreeboardRegistAction implements Action{

	private FreeboardService freeboardService;
	
	public void setFreeboardService(FreeboardService freeboardService) {
		this.freeboardService = freeboardService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/freeboard/regist_success.jsp";
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		FreeboardVO freeboard = new FreeboardVO();
		freeboard.setMem_id(writer);
		freeboard.setBrd_title(title);
		freeboard.setBrd_content(content);
		
		freeboardService.registFreeboard(freeboard);
		
		return url;
	}

}
