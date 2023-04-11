package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.ReplyVO;

public class ReplyDAOImpl implements ReplyDAO{

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<ReplyVO> selectReplyList(String brd_no, SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		try {
			List<ReplyVO> replyList = session.selectList("Reply-Mapper.selectReplyList", brd_no, rowBounds);
			return replyList;
		}finally {
			if(session!= null) session.close();
		}
	}

	@Override
	public int countReply(String brd_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Reply-Mapper.countReply",brd_no);
			return count;
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public int selectReplySeqNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int num = (Integer) session.selectOne("Reply-Mapper.selectReplySeqNextValue");
			return num;
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void insertReply(ReplyVO reply) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Reply-Mapper.insertReply",reply);
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void updateReply(ReplyVO reply) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Reply-Mapper.updateReply",reply);
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void deleteReply(String brd_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Reply-Mapper.deleteReply",brd_no);
		}finally {
			if(session!=null) session.close();
		}
	}
	
}
