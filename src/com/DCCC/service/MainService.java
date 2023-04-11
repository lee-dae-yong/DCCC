package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.NoticeVO;
import com.DCCC.dto.PhotoVO;

public interface MainService{

	List<NoticeVO> getNoticeListForMain() throws SQLException;

	List<PhotoVO> getPhotoListForMain() throws SQLException;

	List<FacilityVO> getFacilityListForMain() throws SQLException;

}
