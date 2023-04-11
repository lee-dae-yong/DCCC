package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.NoticeVO;

public interface NoticeDAO {

	List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException;

	int selectSearchNoticeListCount(SearchCriteria cri) throws SQLException;

	void updateNoticeViewCnt(String no) throws SQLException;

	NoticeVO selectNoticeByNo(String no) throws SQLException;

	void insertNotice(NoticeVO notice) throws SQLException;

	void updateNotice(NoticeVO notice) throws SQLException;

	void deleteNotice(String no) throws SQLException;

}
