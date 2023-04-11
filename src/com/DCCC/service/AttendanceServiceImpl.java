package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dao.AttendanceDAO;
import com.DCCC.dto.AttendanceVO;

public class AttendanceServiceImpl implements AttendanceService {

	private AttendanceDAO attendanceDAO;

	public AttendanceDAO getAttendanceDAO() {
		return attendanceDAO;
	}

	public void setAttendanceDAO(AttendanceDAO attendanceDAO) {
		this.attendanceDAO = attendanceDAO;
	}

	@Override
	public List<AttendanceVO> getAttendanceList(String prg_code) throws SQLException {
		List<AttendanceVO>attendanceList=attendanceDAO.selectAttendanceList(prg_code);
		return attendanceList;
	}

	@Override
	public int getAttendancePeopleCount(String prg_code) throws SQLException {
		int count=attendanceDAO.selectAttendancePeopleCount(prg_code);
		return count;
	}

	@Override
	public void registAttendance(AttendanceVO attendance) throws SQLException {
		attendanceDAO.insertAttendance(attendance);
		
	}

	@Override
	public void removeAttendance(String mem_id) throws SQLException {
		attendanceDAO.deleteAttendance(mem_id);
	}

	@Override
	public void removeAttendanceForProgram(String prg_code) throws SQLException {
		// TODO Auto-generated method stub
		attendanceDAO.deleteAttendanceForProgram(prg_code);
	}
	
	
	
	
}
