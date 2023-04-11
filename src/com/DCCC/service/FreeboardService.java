package com.DCCC.service;

import java.sql.SQLException;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FreeboardVO;

public interface FreeboardService {

	Map<String, Object> getFreeboardList(SearchCriteria cri) throws SQLException;

	void increaseFreeboardViewCnt(String no) throws SQLException;

	FreeboardVO getFreeboard(String no) throws SQLException;

	void registFreeboard(FreeboardVO freeboard) throws SQLException;

	void modifyFreeboard(FreeboardVO freeboard) throws SQLException;

	void removeFreeboard(String no) throws SQLException;

}
