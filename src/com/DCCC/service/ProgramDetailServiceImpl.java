package com.DCCC.service;

import java.sql.SQLException;

import com.DCCC.dao.ProgramDetailDAO;
import com.DCCC.dto.ProgramDetailVO;

public class ProgramDetailServiceImpl implements ProgramDetailService {
	private ProgramDetailDAO programDetailDAO;

	public ProgramDetailDAO getProgramDetailDAO() {
		return programDetailDAO;
	}

	public void setProgramDetailDAO(ProgramDetailDAO programDetailDAO) {
		this.programDetailDAO = programDetailDAO;
	}

	@Override
	public ProgramDetailVO getProgramDetail(String prg_code) throws SQLException {
		ProgramDetailVO prg_detail=programDetailDAO.selectProgramDetail(prg_code);
		return prg_detail;
	}
	
	
	
	
}
