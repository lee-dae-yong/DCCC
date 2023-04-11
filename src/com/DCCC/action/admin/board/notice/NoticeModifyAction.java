package com.DCCC.action.admin.board.notice;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.NoticeVO;
import com.DCCC.service.NoticeService;

public class NoticeModifyAction implements Action{

	private NoticeService noticeService;
	
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/notice/modify_success.jsp";
		
		String no = request.getParameter("no");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		
		NoticeVO notice= new NoticeVO();
		notice.setNtc_no(no);
		notice.setNtc_title(title);
		notice.setNtc_content(content);
		
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		
		if(startDate != null && !startDate.isEmpty()) {
			Date sd = sf.parse(startDate);
			Date ed = sf.parse(endDate);
			notice.setNtc_startDate(sd);
			notice.setNtc_endDate(ed);
		}else {
			Date d1 = sf.parse("0000-00-00");
			Date d2 = sf.parse("0000-00-00");
			notice.setNtc_startDate(d1);
			notice.setNtc_endDate(d2);
		}
		noticeService.modifyNotice(notice);
		
		return url;
	}

}
