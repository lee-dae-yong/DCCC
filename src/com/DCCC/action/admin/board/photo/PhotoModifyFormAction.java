package com.DCCC.action.admin.board.photo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.PhotoVO;
import com.DCCC.service.PhotoService;

public class PhotoModifyFormAction implements Action{

	private PhotoService photoService;

	public void setPhotoService(PhotoService photoService) {
		this.photoService = photoService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/photo/modify.jsp";
		
		String no = request.getParameter("no");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNum = request.getParameter("perPageNum");
		String page = request.getParameter("page");
		
		if(perPageNum == null || perPageNum.isEmpty()) perPageNum = "10";
		if(page == null || page.isEmpty()) page = "1";
		
		if(searchType==null) searchType = "";
		if(keyword==null) keyword = "";
		if(searchType.equals("")) {
			searchType = "";
			keyword="";
		}
		String from = request.getParameter("from");
		if(from == null || from.isEmpty()) from="";
		PhotoVO photo= null;
			photo = photoService.getPhoto(no);
			request.setAttribute("photo", photo);
		return url;
	}

}
