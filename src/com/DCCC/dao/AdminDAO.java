package com.DCCC.dao;

import java.sql.SQLException;
import java.util.List;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.AdminVO;

public interface AdminDAO {
	
	AdminVO selectAdminById(String adm_id)throws SQLException;
	
	List<AdminVO> selectSearchAdminList(SearchCriteria cri) throws SQLException;
	
	int selectSearchAdminListCount(SearchCriteria cri) throws SQLException;
	
	void insertAdmin(AdminVO admin) throws SQLException;
	
	void updateAdmin(AdminVO admin) throws SQLException;
	
	void deleteAdmin(String adm_id) throws SQLException;

	List<String> selectAdm_dep()throws SQLException;
}
