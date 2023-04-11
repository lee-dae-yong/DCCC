package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.SuggestionDAO;
import com.DCCC.dto.SuggestionVO;

public class SuggestionServiceImpl implements SuggestionService{

	private SuggestionDAO suggestionDAO;
	
	public void setSuggestionDAO(SuggestionDAO suggestionDAO) {
		this.suggestionDAO = suggestionDAO;
	}

	@Override
	public Map<String, Object> getSuggestionList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<SuggestionVO> suggestionList = suggestionDAO.selectSearchSuggestionList(cri);
		dataMap.put("suggestionList", suggestionList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(suggestionDAO.selectSearchSuggestionListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public void increaseSuggestionViewCnt(String no) throws SQLException {
		suggestionDAO.updateSuggestionViewCnt(no);
	}

	@Override
	public SuggestionVO getSuggestion(String no) throws SQLException {
		SuggestionVO suggestion = suggestionDAO.selectSuggestionByNo(no);
		return suggestion;
	}

	@Override
	public void registSuggestion(SuggestionVO suggestion) throws SQLException {
		suggestionDAO.insertSuggestion(suggestion);
	}

	@Override
	public void modifySuggestion(SuggestionVO suggestion) throws SQLException {
		suggestionDAO.modifySuggestion(suggestion);
	}

	@Override
	public void removeSuggestion(String no) throws SQLException {
		suggestionDAO.deleteSuggestion(no);
	}

	@Override
	public void modifySuggestionByAdmin(SuggestionVO suggestion) throws SQLException {
		suggestionDAO.updateSuggestionByAdmin(suggestion);
	}

}
