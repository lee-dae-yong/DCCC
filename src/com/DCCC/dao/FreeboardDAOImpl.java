package com.DCCC.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FreeboardVO;

public class FreeboardDAOImpl implements FreeboardDAO {

	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<FreeboardVO> selectSearchFreeboardList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum();
		Map<String,Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		try {
			
			List<FreeboardVO> freeboardList = session.selectList("Freeboard-Mapper.selectSearchFreeboardList", dataParam);
			return freeboardList;
		}finally {
			session.close();
		}
	}

	@Override
	public int selectSearchFreeboardListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Freeboard-Mapper.selectSearchFreeboardListCount",cri);
			return count;
		}finally {
			session.close();
		}
	}

	@Override
	public void updateFreeboardViewCnt(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Freeboard-Mapper.updateFreeboardViewCnt",no);
		}finally {
			session.close();
		}
	}

	@Override
	public FreeboardVO selectFreeboardByNo(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			FreeboardVO freeboard = session.selectOne("Freeboard-Mapper.selectFreeboardByNo",no);
			return freeboard;
		}finally {
			session.close();
		}
	}

	@Override
	public void insertFreeboard(FreeboardVO freeboard) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Freeboard-Mapper.insertFreeboard",freeboard);
		}finally {
			session.close();
		}
	}

	@Override
	public void modifyFreeboard(FreeboardVO freeboard) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Freeboard-Mapper.modifyFreeboard",freeboard);
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteFreeboard(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Freeboard-Mapper.deleteFreeboard",no);
		}finally {
			session.close();
		}
	}

}
