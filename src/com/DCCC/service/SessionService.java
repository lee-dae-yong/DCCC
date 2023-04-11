package com.DCCC.service;

import java.sql.SQLException;

import com.DCCC.dto.AdminVO;
import com.DCCC.dto.MemberVO;

public interface SessionService {

	MemberVO getMember(String id) throws SQLException;

	int memberLogin(String id, String pwd) throws SQLException;

	void registMember(MemberVO member) throws SQLException;

	int findMemberId(MemberVO member) throws SQLException;

	int findMemberPw(MemberVO member)throws SQLException;

	MemberVO getMemberForGetId(MemberVO member) throws SQLException;

	MemberVO getMemberForGetIdV2(MemberVO member) throws SQLException;

	void modifyMem_newPw(String getId, int number) throws SQLException;

	int adminLogin(String id, String pwd) throws SQLException;

	AdminVO getAdmin(String id) throws SQLException;

}
