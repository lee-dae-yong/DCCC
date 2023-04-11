package com.DCCC.service;

import java.sql.SQLException;

import com.DCCC.dto.ProgramDetailVO;

public interface ProgramDetailService {
	public ProgramDetailVO getProgramDetail(String prg_code)throws SQLException;
}
