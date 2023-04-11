package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.PhotoVO;

public interface PhotoService {

	Map<String, Object> getPhotoList(SearchCriteria cri) throws SQLException;

	void registPhoto(PhotoVO photo) throws SQLException;

	void increasePhotoViewCnt(String no) throws SQLException;

	PhotoVO getPhoto(String no) throws SQLException;

	void modifyPhoto(PhotoVO photo) throws SQLException;

	void removePhoto(String no) throws SQLException;
}
