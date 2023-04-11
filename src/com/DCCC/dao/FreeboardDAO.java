package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.FreeboardVO;

public interface FreeboardDAO {

	List<FreeboardVO> selectSearchFreeboardList(SearchCriteria cri) throws SQLException;

	int selectSearchFreeboardListCount(SearchCriteria cri) throws SQLException;

	void updateFreeboardViewCnt(String no) throws SQLException;

	FreeboardVO selectFreeboardByNo(String no) throws SQLException;

	void insertFreeboard(FreeboardVO freeboard) throws SQLException;

	void modifyFreeboard(FreeboardVO freeboard) throws SQLException;

	void deleteFreeboard(String no) throws SQLException;

}
