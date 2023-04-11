package com.DCCC.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.dto.FacilityVO;
import com.DCCC.dto.NoticeVO;
import com.DCCC.dto.PhotoVO;
import com.DCCC.service.MainService;

public class MainAction implements Action{

	private MainService mainService;
	
	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/main.jsp";
		
		List<NoticeVO> noticeList = mainService.getNoticeListForMain();
		List<PhotoVO> photoList = mainService.getPhotoListForMain();
		List<FacilityVO> facilityList = mainService.getFacilityListForMain();
		
		request.setAttribute("noticeList", noticeList);
		request.setAttribute("photoList", photoList);
		request.setAttribute("facilityList", facilityList);
		return url;
	}

}
