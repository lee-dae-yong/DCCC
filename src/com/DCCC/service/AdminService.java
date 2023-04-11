package com.DCCC.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dto.AdminVO;

public interface AdminService {
	
	int login(String adm_id, String adm_pwd);
	
	Map<String,Object> getAdminList(SearchCriteria cri) throws SQLException;
	
	AdminVO getAdminById(String adm_id) throws SQLException;
	
	void regist(AdminVO admin) throws SQLException;
	
	void modify(AdminVO admin) throws SQLException;
	
	void remove(String adm_id) throws SQLException;
	
	List<String>getAdm_dep()throws SQLException;
	
}
