package com.DCCC.service;

import java.sql.SQLException;

import com.DCCC.dto.FacilityWithPriceViewVO;


public interface FacilityWithPriceViewService {
	public FacilityWithPriceViewVO getFacilityWithPrice(String fac_no)throws SQLException;
}
