package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dao.MainDAO;
import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.NoticeVO;
import com.DCCC.dto.PhotoVO;

public class MainServiceImpl implements MainService{

	private MainDAO mainDAO;
	
	public void setMainDAO(MainDAO mainDAO) {
		this.mainDAO = mainDAO;
	}

	@Override
	public List<NoticeVO> getNoticeListForMain() throws SQLException {
		List<NoticeVO> noticeList = mainDAO.selectNoticeListForMain();
		return noticeList;
	}

	@Override
	public List<PhotoVO> getPhotoListForMain() throws SQLException {
		List<PhotoVO> photoList = mainDAO.selectPhotoListForMain();
		return photoList;
	}

	@Override
	public List<FacilityVO> getFacilityListForMain() throws SQLException {
		List<FacilityVO> facilityList = mainDAO.selectFacilityListForMain();
		return facilityList;
	}

}
