package com.DCCC.action.member.board.freeboard;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FreeboardVO;
import com.DCCC.service.FreeboardService;

public class FreeboardDetailAction implements Action{

	private FreeboardService freeboardService;
	
	public void setFreeboardService(FreeboardService freeboardService) {
		this.freeboardService = freeboardService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/freeboard/detail.jsp";
		String no = request.getParameter("no");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNum = request.getParameter("perPageNum");
		String page = request.getParameter("page");
		
		if(perPageNum == null || perPageNum.isEmpty()) perPageNum = "10";
		if(page == null || page.isEmpty()) page = "1";
		
		if(searchType==null) searchType = "";
		if(keyword==null) keyword = "";
		if(searchType.equals("")) {
			searchType = "";
			keyword="";
		}
		String from = request.getParameter("from");
		if(from == null || from.isEmpty()) from="";
		FreeboardVO freeboard = null;
		if(from.equals("list")) {
			url = "redirect:/member/board/fbd/detail.do?no=" + no+"&searchType="+searchType+"&keyword="+URLEncoder.encode(keyword,"utf-8")+"&perPageNum="+perPageNum+"&page="+page;
			
			freeboardService.increaseFreeboardViewCnt(no);
		}
		else {
			freeboard = freeboardService.getFreeboard(no);
			request.setAttribute("freeboard", freeboard);
		}
		return url;
	}

}
