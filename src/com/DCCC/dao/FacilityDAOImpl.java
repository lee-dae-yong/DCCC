package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.FacilityWithPriceViewVO;

public class FacilityDAOImpl implements FacilityDAO{

	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public int selectSearchFacilityListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Facility-Mapper.selectSearchFacilityListCount", cri);
			return count;
		}finally {
			session.close();
		}
	}
	
	@Override
	public List<FacilityWithPriceViewVO> selectSearchFacilityList(SearchCriteria cri) throws SQLException {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
//			int offset = cri.getStartRowNum();
//			int limit = cri.getPerPageNum();
//			
//			RowBounds rowBounds =new RowBounds(offset, limit);
			
			List<FacilityWithPriceViewVO> facilityList = session.selectList("Facility-Mapper.selectSearchFacilityList", cri);
			//System.out.println("dd" + facilityList.size());
			return facilityList;
			
		}finally {
			session.close();
		}
	}

	@Override
	public FacilityVO selectSearchFacility(String fac_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		FacilityVO facility = null;
		
		
		try {
			facility = session.selectOne("Facility-Mapper.selectSearchFacility", fac_no);

			return facility;
			
		}finally {
			session.close();
		}
		
	}

	@Override
	public void insertFacility(FacilityVO facility) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("Facility-Mapper.insertFacility",facility);
			
		}finally {
			session.close();
		}
	}

	@Override
	public void updateFacility(FacilityVO facility) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("Facility-Mapper.updateFacility",facility);
			
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteFacility(String fac_no) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("Facility-Mapper.deleteFacility",fac_no);
			
		}finally {
			session.close();
		}
	}

	@Override
	public List<FacilityVO> selectSearchFacilityList2(SearchCriteria cri) throws SQLException {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			
			RowBounds rowBounds =new RowBounds(offset, limit);
			
			List<FacilityVO> facilityList = session.selectList("Facility-Mapper.selectSearchFacilityList2", cri, rowBounds);
			
			return facilityList;
			
		}finally {
			session.close();
		}
	}
	

}
