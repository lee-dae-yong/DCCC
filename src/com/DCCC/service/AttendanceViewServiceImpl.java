package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.dao.AttendanceViewDAO;
import com.DCCC.dto.AttendanceViewVO;

public class AttendanceViewServiceImpl implements AttendanceViewService {

	private AttendanceViewDAO attendanceViewDAO;
	public void setAttendanceViewDAO(AttendanceViewDAO attendanceViewDAO) {
		this.attendanceViewDAO = attendanceViewDAO;
	}
	
	
	@Override
	public List<AttendanceViewVO> getAttendanceViewList(String prg_code) throws SQLException {
		List<AttendanceViewVO> attendanceList = attendanceViewDAO.selectAttendanceViewList(prg_code);
		
		return attendanceList;
	}

	@Override
	public AttendanceViewVO getAttendanceViewByCode(String prg_code) throws SQLException {
		AttendanceViewVO attendance  = null;
		 attendance = attendanceViewDAO.selectAttendanceViewByCode(prg_code);
		
		return attendance;
	}

}
