package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.AttendanceVO;

public interface AttendanceDAO {
	
	public List<AttendanceVO> selectAttendanceList (String prg_code) throws SQLException;
	
	public int selectAttendancePeopleCount(String prg_code) throws SQLException;
	
	public void insertAttendance(AttendanceVO attendance) throws SQLException;
	
	public void deleteAttendance(String mem_id)throws SQLException;
	
	public void deleteAttendanceForProgram(String prg_code)throws SQLException;
	
	
}
