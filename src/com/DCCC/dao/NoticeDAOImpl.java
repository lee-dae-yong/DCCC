package com.DCCC.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{

	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum();
		Map<String,Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		try {
			
			List<NoticeVO> noticeList = session.selectList("Notice-Mapper.selectSearchNoticeList", dataParam);
			return noticeList;
		}finally {
			session.close();
		}
	}

	@Override
	public int selectSearchNoticeListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount",cri);
			return count;
		}finally {
			session.close();
		}
	}

	@Override
	public void updateNoticeViewCnt(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Notice-Mapper.updateNoticeViewCnt",no);
		}finally {
			session.close();
		}
	}

	@Override
	public NoticeVO selectNoticeByNo(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNo",no);
			return notice;
		}finally {
			session.close();
		}
	}

	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Notice-Mapper.insertNotice",notice);
		}finally {
			session.close();
		}
	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Notice-Mapper.updateNotice",notice);
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteNotice(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Notice-Mapper.deleteNotice",no);
		}finally {
			session.close();
		}
	}

}
