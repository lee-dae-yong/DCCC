package com.DCCC.action.reply;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.SearchCriteria;
import com.DCCC.action.Action;
import com.DCCC.service.ReplyService;
import com.DCCC.view.JSONViewResolver;

public class ReplyListAction implements Action{

	private ReplyService replyService;
	
	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String fac_no = request.getParameter("no");
		int page = Integer.parseInt(request.getParameter("page"));
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(page);
		cri.setPerPageNum(10);
		
		Map<String, Object> dataMap = replyService.getReplyList(fac_no, cri);
		
		JSONViewResolver.view(response, dataMap);
		
		return url;
	}

}
