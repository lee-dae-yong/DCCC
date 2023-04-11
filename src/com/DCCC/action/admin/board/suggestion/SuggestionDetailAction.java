package com.DCCC.action.admin.board.suggestion;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.SuggestionVO;
import com.DCCC.service.SuggestionService;

public class SuggestionDetailAction implements Action{

	private SuggestionService suggestionService;
	
	public void setSuggestionService(SuggestionService suggestionService) {
		this.suggestionService = suggestionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/suggestion/detail.jsp";
		
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
		SuggestionVO suggestion = null;
		if(from.equals("list")) {
			url = "redirect:/member/board/sug/detail.do?no=" + no+"&searchType="+searchType+"&keyword="+URLEncoder.encode(keyword,"utf-8")+"&perPageNum="+perPageNum+"&page="+page;
			
			suggestionService.increaseSuggestionViewCnt(no);
		}
		else {
			suggestion = suggestionService.getSuggestion(no);
			request.setAttribute("suggestion", suggestion);
		}
		return url;
	}

}
