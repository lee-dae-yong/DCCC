package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.PhotoVO;

public class PhotoDAOImpl implements PhotoDAO{

	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<PhotoVO> selectSearchPhotoList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		try {
			List<PhotoVO> photoList = session.selectList("Photo-Mapper.selectSearchPhotoList",cri, rowBounds);
			return photoList;
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public int selectSearchPhotoListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Photo-Mapper.selectSearchPhotoListCount",cri);
			return count;
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void insertPhoto(PhotoVO photo) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Photo-Mapper.insertPhoto",photo);
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void updatePhotoViewCnt(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Photo-Mapper.updatePhotoViewCnt",no);
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public PhotoVO selectPhotoByNo(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			PhotoVO photo = session.selectOne("Photo-Mapper.selectPhotoByNo",no);
			return photo;
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void updatePhoto(PhotoVO photo) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Photo-Mapper.updatePhoto",photo);
		}finally {
			if(session!=null) session.close();
		}
	}

	@Override
	public void deletePhoto(String no) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Photo-Mapper.deletePhoto",no);
		}finally {
			if(session!=null) session.close();
		}
	}

}
