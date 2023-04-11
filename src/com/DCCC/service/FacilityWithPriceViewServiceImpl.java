package com.DCCC.service;

import java.sql.SQLException;

import com.DCCC.dao.FacilityWithPriceViewDAO;
import com.DCCC.dto.FacilityWithPriceViewVO;

public class FacilityWithPriceViewServiceImpl implements FacilityWithPriceViewService{

	
	private FacilityWithPriceViewDAO facilityWithPriceViewDAO;
	public FacilityWithPriceViewDAO getFacilityWithPriceViewDAO() {
		return facilityWithPriceViewDAO;
	}
	public void setFacilityWithPriceViewDAO(FacilityWithPriceViewDAO facilityWithPriceViewDAO) {
		this.facilityWithPriceViewDAO = facilityWithPriceViewDAO;
	}



	@Override
	public FacilityWithPriceViewVO getFacilityWithPrice(String fac_no) throws SQLException {

		FacilityWithPriceViewVO facilitywithpriceview = facilityWithPriceViewDAO.selectFacilityWithPrice(fac_no);
		return facilitywithpriceview;
	}

}
