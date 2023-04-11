package com.DCCC.action.member.board.suggestion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.SuggestionVO;
import com.DCCC.service.SuggestionService;

public class SuggestionRegistAction implements Action{

	private SuggestionService suggestionService;

	public void setSuggestionService(SuggestionService suggestionService) {
		this.suggestionService = suggestionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/suggestion/regist_success.jsp";
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String rock = request.getParameter("rock");
		
		SuggestionVO suggestion = new SuggestionVO();
		suggestion.setMem_id(writer);
		suggestion.setSug_title(title);
		suggestion.setSug_content(content);
		suggestion.setSug_rock(rock);
		
		suggestionService.registSuggestion(suggestion);
		
		return url;
	}

}
