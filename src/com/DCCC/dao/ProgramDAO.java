package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.ProgramSearchCriteria;
import com.DCCC.SearchCriteria;
import com.DCCC.dto.ProgramVO;

public interface ProgramDAO {
public List<ProgramVO>selectSearchProgramList(SearchCriteria cri) throws SQLException;
public List<ProgramVO>selectSearchProgramList(ProgramSearchCriteria cri) throws SQLException;
public List<ProgramVO>selectSearchProgramList(String searchType, String keyword) throws SQLException;	
	public ProgramVO selectSearchProgram(String prg_code) throws SQLException;
	
	public void insertProgram(ProgramVO program)throws SQLException;
	
	public void updateProgram(ProgramVO program)throws SQLException;
	
	public void deleteProgram(String prg_code)throws SQLException;
	
	public List<String>selectProgramKind() throws SQLException;
	
	public int selectProgramInner(String prg_code)throws SQLException;
	
	public void updateInner(int prg_innerPeople, String prg_code)throws SQLException;
	
	public String createPrg_code()throws SQLException;
}
