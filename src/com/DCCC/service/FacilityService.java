package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FacilityVO;

public interface FacilityService {

	Map<String, Object> getFacilityList(SearchCriteria cri) throws SQLException;
	
	FacilityVO getFacilityByFac_no(String fac_no) throws SQLException;
	
	void registFacility(FacilityVO facility) throws SQLException;
	
	void modifyFacility(FacilityVO facility) throws SQLException;
	
	void removeFacility(String fac_no) throws SQLException;

	
}
