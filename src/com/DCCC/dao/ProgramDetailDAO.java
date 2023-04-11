package com.DCCC.dao;

import java.sql.SQLException;

import com.DCCC.dto.ProgramDetailVO;

public interface ProgramDetailDAO {
	public ProgramDetailVO selectProgramDetail(String prg_code)throws SQLException;
}
