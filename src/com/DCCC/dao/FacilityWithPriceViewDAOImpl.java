package com.DCCC.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.FacilityWithPriceViewVO;

public class FacilityWithPriceViewDAOImpl implements FacilityWithPriceViewDAO{

	private SqlSessionFactory sqlSessionFactory;
	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}



	@Override
	public FacilityWithPriceViewVO selectFacilityWithPrice(String fac_no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		FacilityWithPriceViewVO facilitywithpriceview = null;
		
		try {
			facilitywithpriceview = session.selectOne("FacilityWithPriceView-Mapper.selectFacilityWithPriceView",fac_no);
			return facilitywithpriceview;
		}finally {
			session.close();
		}
	}

}
