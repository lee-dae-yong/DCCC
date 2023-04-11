package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FacilityPriceVO;

public interface FacilityPriceDAO {

	List<FacilityPriceVO> selectSearchFacilityPriceList(SearchCriteria cri) throws SQLException;
	
	FacilityPriceVO selectSearchFacilityPrice(String fac_no) throws SQLException;
	
	void insertFacilityPrice(FacilityPriceVO facilityprice) throws SQLException;
	
	void updateFacilityPrice(FacilityPriceVO facilityprice) throws SQLException;
	
	void deleteFacilityPrice(String fac_no) throws SQLException;
	
}
