package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.FreeboardDAO;
import com.DCCC.dao.ReplyDAO;
import com.DCCC.dto.FreeboardVO;

public class FreeboardServiceImpl implements FreeboardService{

	private FreeboardDAO freeboardDAO; 
	
	public void setFreeboardDAO(FreeboardDAO freeboardDAO) {
		this.freeboardDAO = freeboardDAO;
	}
	
	private ReplyDAO replyDAO;
	
	public void setReplyDAO(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}

	@Override
	public Map<String, Object> getFreeboardList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<FreeboardVO> freeboardList = freeboardDAO.selectSearchFreeboardList(cri);

		if(freeboardList!=null) for(FreeboardVO freeboard : freeboardList) {
			freeboard.setReplycnt(replyDAO.countReply(freeboard.getBrd_no()));
		}
		
		dataMap.put("freeboardList", freeboardList);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(freeboardDAO.selectSearchFreeboardListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public void increaseFreeboardViewCnt(String no) throws SQLException {
		freeboardDAO.updateFreeboardViewCnt(no);
		
	}

	@Override
	public FreeboardVO getFreeboard(String no) throws SQLException {
		FreeboardVO freeboard = freeboardDAO.selectFreeboardByNo(no);
		return freeboard;
	}

	@Override
	public void registFreeboard(FreeboardVO freeboard) throws SQLException {
		freeboardDAO.insertFreeboard(freeboard);
		
	}

	@Override
	public void modifyFreeboard(FreeboardVO freeboard) throws SQLException {
		freeboardDAO.modifyFreeboard(freeboard);
	}

	@Override
	public void removeFreeboard(String no) throws SQLException {
		freeboardDAO.deleteFreeboard(no);
	}

}
