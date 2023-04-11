package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.ProgramSearchCriteria;
import com.DCCC.SearchCriteria;
import com.DCCC.dto.ProgramVO;

public interface ProgramService {
	public List<ProgramVO>getProgramList(SearchCriteria cri)throws SQLException;
	public List<ProgramVO>getProgramList(ProgramSearchCriteria cri)throws SQLException;
	public List<ProgramVO>getProgramList(String searchType, String keyword)throws SQLException;
	
	public ProgramVO getProgram(String prg_code) throws SQLException;
	
	public void registProgram(ProgramVO program)throws SQLException;
	
	public void modifyProgram(ProgramVO program) throws SQLException;
	
	public void removeProgram(String prg_code)throws SQLException;
	
	public List<String> getProgramKind()throws SQLException;
	
	public String getPrg_codeNextVal()throws SQLException;
}
