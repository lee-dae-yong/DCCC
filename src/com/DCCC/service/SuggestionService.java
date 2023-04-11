package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.SuggestionVO;

public interface SuggestionService {
	Map<String, Object> getSuggestionList(SearchCriteria cri) throws SQLException;

	void increaseSuggestionViewCnt(String no) throws SQLException;

	SuggestionVO getSuggestion(String no) throws SQLException;

	void registSuggestion(SuggestionVO suggestion) throws SQLException;

	void modifySuggestion(SuggestionVO suggestion) throws SQLException;

	void removeSuggestion(String no) throws SQLException;

	void modifySuggestionByAdmin(SuggestionVO suggestion) throws SQLException;;
}
