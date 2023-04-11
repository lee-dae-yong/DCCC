package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.ReplyDAO;
import com.DCCC.dto.ReplyVO;

public class ReplyServiceImpl implements ReplyService{

	private ReplyDAO replyDAO;

	public void setReplyDAO(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}

	@Override
	public Map<String, Object> getReplyList(String brd_no, SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<ReplyVO> replyList = replyDAO.selectReplyList(brd_no, cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(replyDAO.countReply(brd_no));
		
		dataMap.put("replyList", replyList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public int getReplyListCount(String brd_no) throws SQLException {
		int count = replyDAO.countReply(brd_no);
		return count;
	}

	@Override
	public void registReply(ReplyVO reply) throws SQLException {
		int rno = replyDAO.selectReplySeqNextValue();
		reply.setRno(rno);
		
		replyDAO.insertReply(reply);
	}

	@Override
	public void modifyReply(ReplyVO reply) throws SQLException {
		replyDAO.updateReply(reply);
	}

	@Override
	public void removeReply(String brd_no) throws SQLException {
		replyDAO.deleteReply(brd_no);
	}
	
}
