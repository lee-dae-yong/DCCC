package com.DCCC.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public MemberVO selectMemberById(String mem_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO member = null;
		try {
			member = session.selectOne("Member-Mapper.selectMemberById", mem_id);
			return member;
		} finally {
			session.close();
		}
	}


	@Override
	public List<MemberVO> selectSearchMemberList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);
			
			List<MemberVO> memberList = session.selectList("Member-Mapper.selectSearchMemberList", cri, rowBounds);
			return memberList;

		} finally {
			session.close();
		}

	}

	@Override
	public int selectSearchMemberListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Member-Mapper.selectSearchMemberListCount", cri);

			return count;

		} finally {
			session.close();
		}
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Member-Mapper.insertMember", member);
		} finally {
			session.close();
		}

	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Member-Mapper.updateMember", member);
		} finally {
			session.close();
		}

	}

	@Override
	public void deleteMember(String mem_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Member-Mapper.deleteMember", mem_id);
		} finally {
			session.close();
		}

	}
}
