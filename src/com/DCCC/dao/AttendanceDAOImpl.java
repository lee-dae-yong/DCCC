package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.DCCC.dto.AttendanceVO;

public class AttendanceDAOImpl implements AttendanceDAO {
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<AttendanceVO> selectAttendanceList(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		List<AttendanceVO> attendanceList=null;
		
		try {
			System.out.println(prg_code);
			attendanceList=session.selectList("Attendance-Mapper.selectAttendanceList",prg_code);
		}finally {
			session.close();
		}
		
		
		return attendanceList;
	}

	@Override
	public int selectAttendancePeopleCount(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		int count;
		
		try {
			count=session.selectOne("Attendance-Mapper.selectAttendancePeopleCount",prg_code);
		}finally {
			session.close();
		}
		
		
		return count;
	}

	@Override
	public void insertAttendance(AttendanceVO attendance) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		
		try {
			session.update("Attendance-Mapper.insertAttendance",attendance);
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteAttendance(String mem_id) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		
		try {
			session.update("Attendance-Mapper.deleteAttendance",mem_id);
		}finally {
			session.close();
		}
	}

	@Override
	public void deleteAttendanceForProgram(String prg_code) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		
		try {
			session.update("Attendance-Mapper.deleteAttendanceForProgram",prg_code);
		}finally {
			session.close();
		}
		
	}
	
	
	
	
}
