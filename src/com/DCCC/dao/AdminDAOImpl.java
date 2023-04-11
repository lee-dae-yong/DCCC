package com.DCCC.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.AdminVO;
import com.DCCC.dto.MemberVO;

public class AdminDAOImpl implements AdminDAO {
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public AdminVO selectAdminById(String adm_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		AdminVO admin = null;

		try {
			admin = session.selectOne("Admin-Mapper.selectAdminById", adm_id);
			return admin;
		} finally {
			session.close();
		}

	}
	

	@Override
	public List<AdminVO> selectSearchAdminList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);

			List<AdminVO> adminList = session.selectList("Admin-Mapper.selectSearchAdminList", cri, rowBounds);
			return adminList;

		} finally {
			session.close();
		}

	}

	@Override
	public int selectSearchAdminListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Admin-Mapper.selectSearchAdminListCount", cri);

			return count;

		} finally {
			session.close();
		}
	}

	@Override
	public void insertAdmin(AdminVO admin) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Admin-Mapper.insertAdmin", admin);
		} finally {
			session.close();
		}

	}

	@Override
	public void updateAdmin(AdminVO admin) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Admin-Mapper.updateAdmin", admin);
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteAdmin(String adm_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Admin-Mapper.deleteAdmin", adm_id);
		} finally {
			session.close();
		}

	}

	@Override
	public List<String> selectAdm_dep() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<String>depList=session.selectList("Admin-Mapper.selectAdm_dep");
			return depList;
		}finally {
			session.close();
		}
		
	}
	
	
	

}
