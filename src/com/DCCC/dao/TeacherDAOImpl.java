package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.ProgramVO;
import com.DCCC.dto.TeacherVO;

public class TeacherDAOImpl implements TeacherDAO {
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public TeacherVO selectTeacherById(String tch_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		TeacherVO teacher = null;

		try {
			teacher = session.selectOne("Teacher-Mapper.selectTeacherById", tch_id);
			return teacher;

		} finally {
			session.close();
		}

	}

	@Override
	public List<TeacherVO> selectSearchTeacherList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);

			List<TeacherVO> teacherList = session.selectList("Teacher-Mapper.selectSearchTeacherList", cri, rowBounds);
			return teacherList;
		} finally {
			session.close();
		}

	}

	@Override
	public int selectSearchTeacherListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Teacher-Mapper.selectSearchTeacherListCount",cri);
			return count;
		
		}finally {
			session.close();
		}
		
	}

	@Override
	public void insertTeacher(TeacherVO teacher) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Teacher-Mapper.insertTeacher", teacher);
		} finally {
			if (session != null)
				session.close();
		}

	}
	@Override
	public void updateTeacher(TeacherVO teacher) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Teacher-Mapper.updateTeacher", teacher);
		} finally {
			session.close();
		}

	}

	@Override
	public void deleteTeacher(String tch_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Teacher-Mapper.deleteTeacher", tch_id);
		} finally {
			session.close();
		}

	}

	@Override
	public List<ProgramVO> selectSearchTeacherWithPrg(String tch_id) {
		return null;
		
			}
	}
