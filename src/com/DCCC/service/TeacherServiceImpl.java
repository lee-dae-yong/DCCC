package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.PageMaker;
import com.DCCC.SearchCriteria;
import com.DCCC.dao.ProgramDAO;
import com.DCCC.dao.TeacherDAO;
import com.DCCC.dto.ProgramVO;
import com.DCCC.dto.TeacherVO;

public class TeacherServiceImpl implements TeacherService {

	private TeacherDAO teacherDAO;
	public void setTeacherDAO(TeacherDAO teacherDAO) {
		this.teacherDAO = teacherDAO;
	}
	private ProgramDAO programDAO;
	public void setProgramDAO(ProgramDAO programDAO) {
		this.programDAO = programDAO;
	}

	@Override
	public int login(String tch_id, String tch_pwd) throws SQLException {
		int result = -1;
		TeacherVO teacher = teacherDAO.selectTeacherById(tch_id);

		if (teacher != null) {
			if (!teacher.getTch_pwd().equals(tch_pwd)) {
				result = 2;
			} else {
				result = 0;
			}
		} else {
			result = 1;
		}

		return result;

	}
	
	@Override
	   public Map<String, Object> getTeacherList(SearchCriteria cri) throws SQLException {
	      Map<String, Object> dataMap = new HashMap<String, Object>();

	      List<TeacherVO> teacherList = teacherDAO.selectSearchTeacherList(cri);
	      dataMap.put("teacherList", teacherList);
	      
	      if(teacherList!=null)for(TeacherVO teacher : teacherList) {
	         List<ProgramVO> programList = teacherDAO.selectSearchTeacherWithPrg(teacher.getTch_id());
	         teacher.setPrgList(programList);
	      }
	      
	      
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      pageMaker.setTotalCount(teacherDAO.selectSearchTeacherListCount(cri));
	      dataMap.put("pageMaker", pageMaker);

	      return dataMap;
	   }

	@Override
	public TeacherVO getTeacherById(String tch_id) throws SQLException {
		TeacherVO teacher = null;

		teacher = teacherDAO.selectTeacherById(tch_id);

		return teacher;
	}

	@Override
	public void regist(TeacherVO teacher) throws SQLException {
		teacherDAO.insertTeacher(teacher);
	}

	@Override
	public void modify(TeacherVO teacher) throws SQLException {
		teacherDAO.updateTeacher(teacher);
	}

	@Override
	public void remove(String tch_id) throws SQLException {
		teacherDAO.deleteTeacher(tch_id);
	}

}
