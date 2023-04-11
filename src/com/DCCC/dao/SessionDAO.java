package com.DCCC.dao;

import java.sql.SQLException;

import com.DCCC.dto.AdminVO;
import com.DCCC.dto.MemberVO;

public interface SessionDAO {
	
	MemberVO selectMemberById(String id)throws SQLException;

	void insertMember(MemberVO member)throws SQLException;

	int selectCountMember(MemberVO member) throws SQLException;

	MemberVO selecMemberByNamePhoneEmail(MemberVO member) throws SQLException;

	MemberVO selecMemberByIdNamePhoneEmail(MemberVO member) throws SQLException;

	int selectCountMemberByIdNamePhoneEmail(MemberVO member) throws SQLException;

	void updateMemberPwByIdNumber(String getId, int number) throws SQLException;

	AdminVO selectAdminById(String id) throws SQLException;
	
}
