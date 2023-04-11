package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dto.AttendanceViewVO;

public interface AttendanceViewService {

	List<AttendanceViewVO> getAttendanceViewList(String prg_code) throws SQLException;

	AttendanceViewVO getAttendanceViewByCode(String prg_code) throws SQLException;
	
}
