package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.ReplyVO;

public interface ReplyDAO {

	List<ReplyVO> selectReplyList(String brd_no, SearchCriteria cri) throws SQLException;
	
	int countReply(String brd_no) throws SQLException;
	
	int selectReplySeqNextValue() throws SQLException;
	
	void insertReply(ReplyVO reply) throws SQLException;
	
	void updateReply(ReplyVO reply) throws SQLException;
	
	void deleteReply(String brd_rno) throws SQLException;
	
}
