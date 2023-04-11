package com.DCCC.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DCCC.SearchCriteria;
import com.DCCC.dao.NoticeDAO;
import com.DCCC.dto.NoticeVO;
import com.DCCC.PageMaker;

public class NoticeServiceImpl implements NoticeService{

	private NoticeDAO noticeDAO;
	
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(cri);
		dataMap.put("noticeList", noticeList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(noticeDAO.selectSearchNoticeListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public void increaseNoticeViewCnt(String no) throws SQLException {
		noticeDAO.updateNoticeViewCnt(no);
	}

	@Override
	public NoticeVO getNotice(String no) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNo(no);
		return notice;
	}

	@Override
	public void registNotice(NoticeVO notice) throws SQLException {
		noticeDAO.insertNotice(notice);
		
	}

	@Override
	public void modifyNotice(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
	}

	@Override
	public void removeNotice(String no) throws SQLException {
		noticeDAO.deleteNotice(no);
	}

}
