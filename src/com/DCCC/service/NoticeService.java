package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.NoticeVO;

public interface NoticeService {

	Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException;

	void increaseNoticeViewCnt(String no) throws SQLException;

	NoticeVO getNotice(String no) throws SQLException;

	void registNotice(NoticeVO notice) throws SQLException;

	void modifyNotice(NoticeVO notice) throws SQLException;

	void removeNotice(String no) throws SQLException;

}
