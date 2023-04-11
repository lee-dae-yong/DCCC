package com.DCCC.action.admin.board.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.NoticeService;

public class NoticeRemoveAction implements Action{

	private NoticeService noticeService;
	
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/notice/remove_success.jsp";
		
		String no = request.getParameter("no");
		
		noticeService.removeNotice(no);
		return url;
	}

}
