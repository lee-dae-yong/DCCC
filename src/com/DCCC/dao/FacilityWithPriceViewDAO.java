package com.DCCC.dao;

import java.sql.SQLException;

import com.DCCC.dto.FacilityWithPriceViewVO;


public interface FacilityWithPriceViewDAO {
	public FacilityWithPriceViewVO selectFacilityWithPrice(String fac_no)throws SQLException;
}
