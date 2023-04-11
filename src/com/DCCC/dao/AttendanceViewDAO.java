package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.AttendanceViewVO;

public interface AttendanceViewDAO {

	AttendanceViewVO selectAttendanceViewByCode(String prg_code) throws SQLException;
	
	List<AttendanceViewVO> selectAttendanceViewList(String prg_code) throws SQLException;
	
}
