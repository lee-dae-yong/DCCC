package com.DCCC.service;

import java.sql.SQLException;

import com.DCCC.dao.SessionDAO;
import com.DCCC.dto.AdminVO;
import com.DCCC.dto.MemberVO;

public class SessionServiceImpl implements SessionService{

	private SessionDAO sessionDAO;
	
	public void setSessionDAO(SessionDAO sessionDAO) {
		this.sessionDAO = sessionDAO;
	}

	@Override
	public int memberLogin(String id, String pwd) throws SQLException {
		int result = -1;
			MemberVO member = sessionDAO.selectMemberById(id);
			
			if(member!=null) {
				if(!member.getMem_pwd().equals(pwd)) {//비밀번호 불일치
					result = 2;
				}else {//로그인 성공
					result = 0;
				}
				
			}else {//아이디 불일치
				result = 1;
			}
		return result;
	}

	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = sessionDAO.selectMemberById(id);
		return member;
	}
	@Override
	public int adminLogin(String id, String pwd) throws SQLException {
		int result = -1;
		AdminVO admin = sessionDAO.selectAdminById(id);
		
		if(admin!=null) {
			if(!admin.getAdm_pwd().equals(pwd)) {//비밀번호 불일치
				result = 2;
			}else {//로그인 성공
				result = 0;
			}
			
		}else {//아이디 불일치
			result = 1;
		}
	return result;
	}

	@Override
	public AdminVO getAdmin(String id) throws SQLException {
		AdminVO admin= sessionDAO.selectAdminById(id);
		return admin;
	}
	@Override
	public void registMember(MemberVO member) throws SQLException {
		sessionDAO.insertMember(member);
	}

	@Override
	public int findMemberId(MemberVO member) throws SQLException {
		int result = sessionDAO.selectCountMember(member);
		return result;
	}

	@Override
	public int findMemberPw(MemberVO member) throws SQLException {
		int result = sessionDAO.selectCountMemberByIdNamePhoneEmail(member);
		return result;
	}
	
	@Override
	public MemberVO getMemberForGetId(MemberVO member) throws SQLException {
		MemberVO mem = sessionDAO.selecMemberByNamePhoneEmail(member);
		return mem;
	}

	@Override
	public MemberVO getMemberForGetIdV2(MemberVO member) throws SQLException {
		MemberVO mem = sessionDAO.selecMemberByIdNamePhoneEmail(member);
		return mem;
	}

	@Override
	public void modifyMem_newPw(String getId, int number) throws SQLException {
		sessionDAO.updateMemberPwByIdNumber(getId, number);
		
	}

	


}
