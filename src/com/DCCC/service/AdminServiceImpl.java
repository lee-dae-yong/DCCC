package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.AdminDAO;
import com.DCCC.dto.AdminVO;

public class AdminServiceImpl implements AdminService {
	private AdminDAO adminDAO;

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	@Override
	public int login(String adm_id, String adm_pwd) {
		int result = -1;
		try {
			AdminVO admin = adminDAO.selectAdminById(adm_id);
			if (admin != null) {
				if (!admin.getAdm_pwd().equals(adm_pwd)) {
					result = 0;
				} else {
					result = 2;
				}
			} else {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public AdminVO getAdminById(String adm_id) throws SQLException {
		AdminVO admin = null;

		admin = adminDAO.selectAdminById(adm_id);

		return admin;
	}

	@Override
	public Map<String, Object> getAdminList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<AdminVO> adminList = adminDAO.selectSearchAdminList(cri);
		dataMap.put("adminList", adminList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminDAO.selectSearchAdminListCount(cri));
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public void regist(AdminVO admin) throws SQLException {
		adminDAO.insertAdmin(admin);
	}

	@Override
	public void modify(AdminVO admin) throws SQLException {
		adminDAO.updateAdmin(admin);

	}

	@Override
	public void remove(String adm_id) throws SQLException {
		adminDAO.deleteAdmin(adm_id);
	}

	@Override
	public List<String> getAdm_dep() throws SQLException {
		List<String>depList=adminDAO.selectAdm_dep();
		return depList;
	}

	
	
	

}
