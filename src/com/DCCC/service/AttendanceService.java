package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.AttendanceVO;

public interface AttendanceService {
//	public List<AttendanceVO> selectAttendanceList (String prg_code) throws SQLException;
//	
//	public int selectAttendancePeopleCount(String prg_code) throws SQLException;
//	
//	public void insertAttendance(AttendanceVO attendance) throws SQLException;
//	
//	public void deleteAttendance(String mem_id)throws SQLException;
	
	
	public List<AttendanceVO>getAttendanceList (String prg_code) throws SQLException;
	
	public int getAttendancePeopleCount(String prg_code) throws SQLException;
	
	public void registAttendance(AttendanceVO attendance) throws SQLException;
	
	public void removeAttendance(String mem_id)throws SQLException;
	
	public void removeAttendanceForProgram(String prg_code)throws SQLException;
	
	
}
