package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.NoticeVO;
import com.DCCC.dto.PhotoVO;

public interface MainDAO {

	List<NoticeVO> selectNoticeListForMain() throws SQLException;

	List<PhotoVO> selectPhotoListForMain() throws SQLException;

	List<FacilityVO> selectFacilityListForMain() throws SQLException;

}
