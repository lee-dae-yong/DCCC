package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.FacilityWithPriceViewVO;

public interface FacilityDAO {
	
	List<FacilityWithPriceViewVO> selectSearchFacilityList(SearchCriteria cri) throws SQLException;
	
	List<FacilityVO> selectSearchFacilityList2(SearchCriteria cri) throws SQLException;
	
	FacilityVO selectSearchFacility(String fac_no) throws SQLException;
	
	void insertFacility(FacilityVO facility) throws SQLException;
	
	void updateFacility(FacilityVO facility) throws SQLException;
	
	void deleteFacility(String fac_no) throws SQLException;
	
	int selectSearchFacilityListCount(SearchCriteria cri) throws SQLException;
	
	
	
}
