package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.SuggestionVO;

public class SuggestionDAOImpl implements SuggestionDAO{

	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<SuggestionVO> selectSearchSuggestionList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		try {
			List<SuggestionVO> suggestionList = session.selectList("Suggestion-Mapper.selectSearchSuggestionList", cri, rowBounds);
			return suggestionList;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public int selectSearchSuggestionListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Suggestion-Mapper.selectSearchSuggestionListCount", cri);
			return count;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void updateSuggestionViewCnt(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Suggestion-Mapper.updateSuggestionViewCnt", no);
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public SuggestionVO selectSuggestionByNo(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			SuggestionVO suggestion = session.selectOne("Suggestion-Mapper.selectSuggestionByNo", no);
			return suggestion;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void insertSuggestion(SuggestionVO suggestion) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Suggestion-Mapper.insertSuggestion", suggestion);
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void modifySuggestion(SuggestionVO suggestion) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Suggestion-Mapper.modifySuggestion", suggestion);
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void deleteSuggestion(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Suggestion-Mapper.deleteSuggestion", no);
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void updateSuggestionByAdmin(SuggestionVO suggestion) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
			
		try {
			session.update("Suggestion-Mapper.updateSuggestionByAdmin", suggestion);
		}finally {
			if(session!=null)session.close();
		}
	}

}
