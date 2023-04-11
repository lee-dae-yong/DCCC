package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.MemberVO;

public interface MemberService {

	int login(String tch_id, String tch_pwd);
	
	Map<String,Object> getMemberList(SearchCriteria cri) throws SQLException;
	
	MemberVO getMemberById(String mem_id) throws SQLException;
	
	void regist(MemberVO member)throws SQLException;
	
	void modify(MemberVO member)throws SQLException;
	
	void remove(String mem_id)throws SQLException;
}
