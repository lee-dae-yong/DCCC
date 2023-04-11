package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.PhotoDAO;
import com.DCCC.dto.PhotoVO;

public class PhotoServiceImpl implements PhotoService{

	private PhotoDAO photoDAO;
	
	public void setPhotoDAO(PhotoDAO photoDAO) {
		this.photoDAO = photoDAO;
	}

	@Override
	public Map<String, Object> getPhotoList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<PhotoVO> photoList = photoDAO.selectSearchPhotoList(cri);
		dataMap.put("photoList", photoList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(photoDAO.selectSearchPhotoListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public void registPhoto(PhotoVO photo) throws SQLException {
		photoDAO.insertPhoto(photo);
	}

	@Override
	public void increasePhotoViewCnt(String no) throws SQLException {
		photoDAO.updatePhotoViewCnt(no);
	}

	@Override
	public PhotoVO getPhoto(String no) throws SQLException {
		PhotoVO photo = photoDAO.selectPhotoByNo(no);
		return photo;
	}

	@Override
	public void modifyPhoto(PhotoVO photo) throws SQLException {
		photoDAO.updatePhoto(photo);
	}

	@Override
	public void removePhoto(String no) throws SQLException {
		photoDAO.deletePhoto(no);
	}

}
