package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.NoticeVO;
import com.DCCC.dto.PhotoVO;

public class MainDAOImpl implements MainDAO{

	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<NoticeVO> selectNoticeListForMain() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<NoticeVO> noticeList = session.selectList("Main-Mapper.selectNoticeListForMain");
			return noticeList;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public List<PhotoVO> selectPhotoListForMain() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<PhotoVO> photoList = session.selectList("Main-Mapper.selectPhotoListForMain");
			return photoList;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public List<FacilityVO> selectFacilityListForMain() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<FacilityVO> facilityList = session.selectList("Main-Mapper.selectFacilityListForMain");
			return facilityList;
		}finally {
			if(session!=null)session.close();
		}
	}

}
