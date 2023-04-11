package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.AttendanceViewVO;

public class AttendanceViewDAOImpl implements AttendanceViewDAO {

	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public AttendanceViewVO selectAttendanceViewByCode(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		AttendanceViewVO attendance = null;
		
		try {
			attendance = session.selectOne("Attendance-Mapper.selectAttendanceViewByCode",prg_code);
			return attendance;
		}finally {
			session.close();
		}
		
	}
	@Override
	public List<AttendanceViewVO> selectAttendanceViewList(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		List<AttendanceViewVO> attendanceList=null;
		
		try {
		attendanceList = session.selectList("Attendance-Mapper.selectAttendanceViewList",prg_code);
		}finally {
			session.close();
		}
		return attendanceList;
	}

}
