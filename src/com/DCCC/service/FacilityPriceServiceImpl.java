package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dao.FacilityPriceDAO;
import com.DCCC.dto.FacilityPriceVO;
import com.DCCC.dto.FacilityVO;

public class FacilityPriceServiceImpl implements FacilityPriceService{

	private FacilityPriceDAO facilitypriceDAO;
	public FacilityPriceDAO getFacilitypriceDAO() {
		return facilitypriceDAO;
	}

	public void setFacilitypriceDAO(FacilityPriceDAO facilitypriceDAO) {
		this.facilitypriceDAO = facilitypriceDAO;
	}

	@Override
	public Map<String, Object> getFacilityPriceList(SearchCriteria cri) throws SQLException {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<FacilityPriceVO> facilitypriceList = facilitypriceDAO.selectSearchFacilityPriceList(cri);
		dataMap.put("facilitypriceList", facilitypriceList);
		return dataMap;
	}

	@Override
	public FacilityPriceVO getFacilityPriceByFac_no(String fac_no) throws SQLException {
		FacilityPriceVO facilityprice = facilitypriceDAO.selectSearchFacilityPrice(fac_no);	
		return facilityprice;
		
	}

	@Override
	public void registFacilityPrice(FacilityPriceVO facilityprice) throws SQLException {
		facilitypriceDAO.insertFacilityPrice(facilityprice);
	}

	@Override
	public void modifyFacilityPrice(FacilityPriceVO facilityprice) throws SQLException {
		facilitypriceDAO.updateFacilityPrice(facilityprice);		
	}

	@Override
	public void removeFacilityPrice(String fac_no) throws SQLException {
		facilitypriceDAO.deleteFacilityPrice(fac_no);
	}

}
