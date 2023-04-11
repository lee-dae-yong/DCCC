package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.MemberDAO;
import com.DCCC.dto.MemberVO;

public class MemberServiceImpl implements MemberService {

	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public int login(String mem_id, String mem_pwd) {
		int result = -1;
		try {
			MemberVO member = memberDAO.selectMemberById(mem_id);
			if (member != null) {
				if (!member.getMem_pwd().equals(mem_pwd)) {
					result = 0;
				} else {
					result = 2;
				}
			} else {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public Map<String, Object> getMemberList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<MemberVO> memberList = memberDAO.selectSearchMemberList(cri);
		dataMap.put("memberList", memberList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberDAO.selectSearchMemberListCount(cri));
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public MemberVO getMemberById(String mem_id) throws SQLException {
		MemberVO member = memberDAO.selectMemberById(mem_id);
		return member;
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		memberDAO.insertMember(member);

	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		memberDAO.updateMember(member);
	}

	@Override
	public void remove(String mem_id) throws SQLException {
		memberDAO.deleteMember(mem_id);

	}

}
