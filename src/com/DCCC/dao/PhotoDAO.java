package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.PhotoVO;

public interface PhotoDAO {

	List<PhotoVO> selectSearchPhotoList(SearchCriteria cri) throws SQLException;

	int selectSearchPhotoListCount(SearchCriteria cri) throws SQLException;

	void insertPhoto(PhotoVO photo) throws SQLException;

	void updatePhotoViewCnt(String no) throws SQLException;

	PhotoVO selectPhotoByNo(String no) throws SQLException;

	void updatePhoto(PhotoVO photo) throws SQLException;

	void deletePhoto(String no) throws SQLException;

}
