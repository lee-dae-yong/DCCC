package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.MemberVO;

public interface MemberDAO {

	MemberVO selectMemberById(String mem_id) throws SQLException;
	
	List<MemberVO> selectSearchMemberList(SearchCriteria cri) throws SQLException;
	
	int selectSearchMemberListCount(SearchCriteria cri) throws SQLException;
	
	void insertMember(MemberVO member) throws SQLException;
	
	void updateMember(MemberVO member) throws SQLException;
	
	void deleteMember(String mem_id) throws SQLException;
	
}
