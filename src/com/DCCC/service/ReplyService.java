package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.ReplyVO;

public interface ReplyService {

	Map<String, Object> getReplyList(String brd_no, SearchCriteria cri) throws SQLException;
	
	int getReplyListCount(String brd_no) throws SQLException;
	
	void registReply(ReplyVO reply) throws SQLException;
	
	void modifyReply(ReplyVO reply) throws SQLException;
	
	void removeReply(String brd_no) throws SQLException;
}
