package com.DCCC.action.admin.board.suggestion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.SuggestionVO;
import com.DCCC.service.SuggestionService;

public class SuggestionModifyAction implements Action{

	private SuggestionService suggestionService;

	public void setSuggestionService(SuggestionService suggestionService) {
		this.suggestionService = suggestionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/suggestion/modify_success.jsp";
		
		String no = request.getParameter("no");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNum = request.getParameter("perPageNum");
		String page = request.getParameter("page");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String replyContent = request.getParameter("replyContent");
		String adminId = request.getParameter("adminId");
		
		if(perPageNum == null || perPageNum.isEmpty()) perPageNum = "10";
		if(page == null || page.isEmpty()) page = "1";
		
		if(searchType==null) searchType = "";
		if(keyword==null) keyword = "";
		if(searchType.equals("")) {
			searchType = "";
			keyword="";
		}
		SuggestionVO suggestion = new SuggestionVO();
		suggestion.setSug_no(no);
		suggestion.setSug_title(title);
		suggestion.setSug_content(content);
		suggestion.setSug_replyContent(replyContent);
		suggestion.setAdm_id(adminId);
		
		suggestionService.modifySuggestionByAdmin(suggestion);
		
		return url;
	}

}
