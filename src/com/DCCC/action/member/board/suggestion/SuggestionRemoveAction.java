package com.DCCC.action.member.board.suggestion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.SuggestionService;

public class SuggestionRemoveAction implements Action{

	private SuggestionService suggestionService;
	
	public void setSuggestionService(SuggestionService suggestionService) {
		this.suggestionService = suggestionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/suggestion/remove_success.jsp";
		
		String no = request.getParameter("no");
		
		suggestionService.removeSuggestion(no);
		return url;
	}

}
