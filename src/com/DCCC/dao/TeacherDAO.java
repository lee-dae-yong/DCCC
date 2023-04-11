package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.ProgramVO;
import com.DCCC.dto.TeacherVO;

public interface TeacherDAO {

	TeacherVO selectTeacherById(String tch_id) throws SQLException;
	
	List<TeacherVO> selectSearchTeacherList(SearchCriteria cri) throws SQLException;
	
	int selectSearchTeacherListCount(SearchCriteria cri) throws SQLException;
	
	void insertTeacher(TeacherVO teacher) throws SQLException;
	
	void updateTeacher(TeacherVO teacher) throws SQLException;
	
	void deleteTeacher(String tch_id) throws SQLException;

	List<ProgramVO> selectSearchTeacherWithPrg(String tch_id);
	
}
