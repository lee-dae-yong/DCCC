package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FacilityPriceVO;

public interface FacilityPriceService {
	
	Map<String, Object> getFacilityPriceList(SearchCriteria cri) throws SQLException;
	
	FacilityPriceVO getFacilityPriceByFac_no(String fac_no) throws SQLException;
	
	void registFacilityPrice(FacilityPriceVO facilityprice) throws SQLException;
	
	void modifyFacilityPrice(FacilityPriceVO facilityprice) throws SQLException;
	
	void removeFacilityPrice(String fac_no) throws SQLException;
}
