package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.SuggestionVO;

public interface SuggestionDAO {

	List<SuggestionVO> selectSearchSuggestionList(SearchCriteria cri) throws SQLException;

	int selectSearchSuggestionListCount(SearchCriteria cri) throws SQLException;

	void updateSuggestionViewCnt(String no) throws SQLException;

	SuggestionVO selectSuggestionByNo(String no) throws SQLException;

	void insertSuggestion(SuggestionVO suggestion) throws SQLException;

	void modifySuggestion(SuggestionVO suggestion) throws SQLException;

	void deleteSuggestion(String no) throws SQLException;

	void updateSuggestionByAdmin(SuggestionVO suggestion) throws SQLException;

}
