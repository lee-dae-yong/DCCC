package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.TeacherVO;

public interface TeacherService {
	
	int login(String tch_id, String tch_pwd) throws SQLException;

	Map<String,Object> getTeacherList(SearchCriteria cri) throws SQLException;
	
	TeacherVO getTeacherById(String tch_id) throws SQLException;
	
	void regist(TeacherVO teacher) throws SQLException;
	
	void modify(TeacherVO teacher) throws SQLException;
	
	void remove(String tch_id) throws SQLException;
	
}
