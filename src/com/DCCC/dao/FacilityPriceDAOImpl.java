package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FacilityPriceVO;
import com.DCCC.dto.FacilityVO;

public class FacilityPriceDAOImpl implements FacilityPriceDAO{

	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<FacilityPriceVO> selectSearchFacilityPriceList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			
			List<FacilityPriceVO> facilitypriceList = session.selectList("FacilityPrice-Mapper.selectSearchFacilityPriceList", cri);
			
			return facilitypriceList;
			
		} finally {
			session.close();
		}
	}

	@Override
	public FacilityPriceVO selectSearchFacilityPrice(String fac_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		FacilityPriceVO facilityprice = null;
		
		
		try {
			facilityprice = session.selectOne("FacilityPrice-Mapper.selectSearchFacilityPrice", fac_no);

			return facilityprice;
			
		}finally {
			session.close();
		}
		
	}

	@Override
	public void insertFacilityPrice(FacilityPriceVO facilityprice) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("FacilityPrice-Mapper.insertFacilityPrice",facilityprice);
			
		}finally {
			session.close();
		}
	}
	

	@Override
	public void updateFacilityPrice(FacilityPriceVO facilityprice) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("FacilityPrice-Mapper.updateFacilityPrice",facilityprice);
			
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteFacilityPrice(String fac_no) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			session.update("FacilityPrice-Mapper.deleteFacility",fac_no);
			
		}finally {
			session.close();
		}
	}

}
