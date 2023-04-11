package com.DCCC.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.ProgramDetailVO;

public class ProgramDetailDAOImpl implements ProgramDetailDAO {
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public ProgramDetailVO selectProgramDetail(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		ProgramDetailVO prg_detail=null;
		
		try {
			prg_detail=session.selectOne("ProgramDetail-Mapper.selectProgramDetail",prg_code);
			return prg_detail;
		}finally {
			session.close();
		}
	}
	
	
	
}
