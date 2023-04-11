package com.DCCC.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.AdminVO;
import com.DCCC.dto.MemberVO;

public class SessionDAOImpl implements SessionDAO{

	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			MemberVO member = session.selectOne("Session-Mapper.selectMemberById",id);
			return member;
		}finally {
			if(session != null) session.close();
		}
	}
	
	@Override
	public AdminVO selectAdminById(String id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			AdminVO admin = session.selectOne("Session-Mapper.selectAdminById",id);
			return admin;
		}finally {
			if(session != null) session.close();
		}
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Session-Mapper.insertMember",member);
		}finally {
			if(session != null) session.close();
		}
	}

	@Override
	public int selectCountMember(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int result = session.selectOne("Session-Mapper.selectCountMember",member);
			return result;
		}finally {
			if(session != null) session.close();
		}
	}
	
	@Override
	public int selectCountMemberByIdNamePhoneEmail(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int result = session.selectOne("Session-Mapper.selectCountMemberByIdNamePhoneEmail",member);
			return result;
		}finally {
			if(session != null) session.close();
		}
	}
	
	@Override
	public MemberVO selecMemberByNamePhoneEmail(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			MemberVO mem = session.selectOne("Session-Mapper.selectMemberByNamePhoneEmail",member);
			return mem;
		}finally {
			if(session != null) session.close();
		}
	}

	@Override
	public MemberVO selecMemberByIdNamePhoneEmail(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			MemberVO mem = session.selectOne("Session-Mapper.selecMemberByIdNamePhoneEmail",member);
			return mem;
		}finally {
			if(session != null) session.close();
		}
	}

	@Override
	public void updateMemberPwByIdNumber(String getId, int number) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		Map<String,Object> returnMap = new HashMap<String, Object>();
		returnMap.put("getId", getId);
		returnMap.put("number", number);
		try {
			session.update("Session-Mapper.updateMemberPwByIdNumber",returnMap);
		}finally {
			if(session != null) session.close();
		}
	}

	
	

}
