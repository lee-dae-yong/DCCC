package com.DCCC.action.member.board.notice;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.NoticeVO;
import com.DCCC.service.NoticeService;

public class NoticeDetailAction implements Action{

	private NoticeService noticeService;
	
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/notice/detail.jsp";
		String no = request.getParameter("no");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNum = request.getParameter("perPageNum");
		String page = request.getParameter("page");
		
		System.out.println("keyword : " + keyword);
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
		NoticeVO notice = null;
		if(from.equals("list")) {
			url = "redirect:/member/board/notice/detail.do?no=" + no+"&searchType="+searchType+"&keyword="+URLEncoder.encode(keyword,"utf-8")+"&perPageNum="+perPageNum+"&page="+page;
			
			noticeService.increaseNoticeViewCnt(no);
		}
		else {
			notice = noticeService.getNotice(no);
			request.setAttribute("notice", notice);
		}
		return url;
	}

}
