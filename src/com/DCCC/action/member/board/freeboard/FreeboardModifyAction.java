package com.DCCC.action.member.board.freeboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FreeboardVO;
import com.DCCC.service.FreeboardService;

public class FreeboardModifyAction implements Action{

	private FreeboardService freeboardService;
	
	public void setFreeboardService(FreeboardService freeboardService) {
		this.freeboardService = freeboardService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/freeboard/modify_success.jsp";
		
		String no = request.getParameter("no");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNum = request.getParameter("perPageNum");
		String page = request.getParameter("page");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		if(perPageNum == null || perPageNum.isEmpty()) perPageNum = "10";
		if(page == null || page.isEmpty()) page = "1";
		
		if(searchType==null) searchType = "";
		if(keyword==null) keyword = "";
		if(searchType.equals("")) {
			searchType = "";
			keyword="";
		}
		FreeboardVO freeboard = new FreeboardVO();
		freeboard.setBrd_no(no);
		freeboard.setBrd_title(title);
		freeboard.setBrd_content(content);
		
		freeboardService.modifyFreeboard(freeboard);
		
		return url;
	}

}
