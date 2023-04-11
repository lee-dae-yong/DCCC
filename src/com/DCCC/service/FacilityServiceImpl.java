package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.FacilityDAO;
import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.FacilityWithPriceViewVO;

public class FacilityServiceImpl implements FacilityService{

	private FacilityDAO facilityDAO;
	
	public FacilityDAO getFacilityDAO() {
		return facilityDAO;
	}

	public void setFacilityDAO(FacilityDAO facilityDAO) {
		this.facilityDAO = facilityDAO;
	}

	@Override
	public Map<String, Object> getFacilityList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<FacilityWithPriceViewVO> facilityList = facilityDAO.selectSearchFacilityList(cri);
		dataMap.put("facilityList", facilityList);
		
		List<FacilityVO> facilityList2 = facilityDAO.selectSearchFacilityList2(cri);
		dataMap.put("facilityList2", facilityList2);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(facilityDAO.selectSearchFacilityListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public FacilityVO getFacilityByFac_no(String fac_no) throws SQLException {
		
		FacilityVO facility = facilityDAO.selectSearchFacility(fac_no);		
		return facility;
	}

	@Override
	public void registFacility(FacilityVO facility) throws SQLException {
		facilityDAO.insertFacility(facility);
	}

	@Override
	public void modifyFacility(FacilityVO facility) throws SQLException {
		facilityDAO.updateFacility(facility);
		
	}

	@Override
	public void removeFacility(String fac_no) throws SQLException {
		facilityDAO.deleteFacility(fac_no);
		
	}

	
}
