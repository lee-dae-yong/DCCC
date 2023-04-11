package com.DCCC.action.admin;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.SearchCriteria;
import com.DCCC.action.Action;
import com.DCCC.service.MemberService;

public class MemberListAction implements Action {
	
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/WEB-INF/views/admin/member/list.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam = request.getParameter("page");
		
		if (perPageNumParam == null || perPageNumParam.isEmpty())perPageNumParam="10";
		if (pageParam == null || pageParam.isEmpty())pageParam="1"; //널 유무 먼저 판단  or니깐 앞에가 true면 뒤에는 안보고 패스
		if (searchType == null) searchType = "";
		if (keyword == null) keyword = "";
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		
		
		try {
			Map<String,Object> dataMap = memberService.getMemberList(cri);
			request.setAttribute("dataMap", dataMap);

		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
		
			return url;
	}

}
		
		
		
		
		
		
		
		
		
		
		
