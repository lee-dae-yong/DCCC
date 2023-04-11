package com.DCCC.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.ProgramSearchCriteria;
import com.DCCC.SearchCriteria;
import com.DCCC.dto.ProgramVO;

public class ProgramDAOImpl implements ProgramDAO {
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<ProgramVO> selectSearchProgramList(SearchCriteria cri) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		List<ProgramVO>programList=null;
		try {
			programList=session.selectList("Program-Mapper.selectSearchProgramList",cri);
			
		}finally {
			session.close();
		}
		
		
		return programList;
	}

	@Override
	public List<ProgramVO> selectSearchProgramList(String searchType, String keyword) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		List<ProgramVO>programList=null;
		Map<String,String>dataMap=new HashMap<String,String>();
		dataMap.put("searchType", searchType);
		dataMap.put("keyword",keyword);
		try {
			programList=session.selectList("Program-Mapper.selectSearchProgramList",dataMap);
			
		}finally {
			session.close();
		}
		
		
		return programList;
	}

	@Override
	public ProgramVO selectSearchProgram(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		
		ProgramVO program=null;

		try {
			
			program=session.selectOne("Program-Mapper.selectSearchProgram", prg_code);
	
			return program;
		}finally {
			session.close();
		}
	}

	@Override
	public void insertProgram(ProgramVO program) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("Program-Mapper.insertProgram",program);
			
		}finally {
			session.close();
		}
		
		
		
		
	}

	@Override
	public void updateProgram(ProgramVO program) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();	
		try {
			session.update("Program-Mapper.updateProgram",program);
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteProgram(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("Program-Mapper.deleteProgram",prg_code);
		}finally {
			session.close();
		}
	}

	@Override
	public List<String> selectProgramKind() throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		List<String>kind=null;
		
		try {
			kind=session.selectList("Program-Mapper.selectProgramKind");
		}finally {
			session.close();
		}
		
		return kind;
	}

	@Override
	public int selectProgramInner(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		int programInner;
		System.out.println("kjkjk"+prg_code);
		try {
			programInner=session.selectOne("Program-Mapper.selectProgramInner",prg_code);
			System.out.println(programInner);
		}finally {
			session.close();
		}
		return programInner;
		
		
	}

	@Override
	public void updateInner(int prg_innerPeople, String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		Map<String, Object>dataMap=new HashMap<>();
		
		dataMap.put("prg_innerPeople",prg_innerPeople);
		dataMap.put("prg_code",prg_code);
		try {
			session.update("Program-Mapper.updateProgramInner",dataMap);
		}finally {
			session.close();
		}
	}

	@Override
	public String createPrg_code() throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		String prg_code=null;
		
		try {
			prg_code=session.selectOne("Program-Mapper.createPrg_code");
			return prg_code;
		}finally {
			session.close();
		}
		
	}

	@Override
	public List<ProgramVO> selectSearchProgramList(ProgramSearchCriteria cri) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		
		Map<String,Object>dataParam=new HashMap<String,Object>();
		String searchType=cri.getSearchType();
		String prg_time=cri.getPrg_time();
		String prg_day=cri.getPrg_day();
		String prg_kind=cri.getPrg_kind();
		
		
		
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("prg_time",cri.getPrg_time());
		dataParam.put("prg_kind",cri.getPrg_kind());
		dataParam.put("prg_day",cri.getPrg_day());
		
		try {
			List<ProgramVO>programList=session.selectList("Program-Mapper.selectSearchProgramList",dataParam);
			return programList;
		}finally {
			session.close();
		}
		
	}
	
	
	
	
}
