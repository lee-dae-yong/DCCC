package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.ProgramSearchCriteria;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.ProgramDAO;
import com.DCCC.dto.ProgramVO;

public class ProgramServiceImpl implements ProgramService {
	private ProgramDAO programDAO;

	public ProgramDAO getProgramDAO() {
		return programDAO;
	}

	public void setProgramDAO(ProgramDAO programDAO) {
		this.programDAO = programDAO;
	}

	@Override
	public List<ProgramVO> getProgramList(SearchCriteria cri) throws SQLException {
		List<ProgramVO>programList=programDAO.selectSearchProgramList(cri);
		return programList;
	}
	@Override
	public List<ProgramVO> getProgramList(String searchType, String keyword) throws SQLException {
		List<ProgramVO>programList=programDAO.selectSearchProgramList(searchType, keyword);
		return programList;
	}

	@Override
	public ProgramVO getProgram(String prg_code) throws SQLException {
		ProgramVO program=programDAO.selectSearchProgram(prg_code);
		return program;
	}

	@Override
	public void registProgram(ProgramVO program) throws SQLException {

		programDAO.insertProgram(program);
	}

	@Override
	public void modifyProgram(ProgramVO program) throws SQLException {

		programDAO.updateProgram(program);
	}

	@Override
	public void removeProgram(String prg_code) throws SQLException {
		programDAO.deleteProgram(prg_code);
	}

	@Override
	public List<String> getProgramKind() throws SQLException {
		List<String>kinds=programDAO.selectProgramKind();
		return kinds;
	}

	@Override
	public String getPrg_codeNextVal() throws SQLException {
		String prg_code=programDAO.createPrg_code();
		
		return prg_code;
	}

	@Override
	public List<ProgramVO> getProgramList(ProgramSearchCriteria cri) throws SQLException {
		List<ProgramVO>programList=programDAO.selectSearchProgramList(cri);
		System.out.println(cri.getSearchType());
//		System.out.println(cri.getPrg_day());
		return programList;
	}
	
	
	
	
}
