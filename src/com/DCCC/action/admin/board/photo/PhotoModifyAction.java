package com.DCCC.action.admin.board.photo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.PhotoVO;
import com.DCCC.service.PhotoService;

public class PhotoModifyAction implements Action{

	private PhotoService photoService;
	
	public void setPhotoService(PhotoService photoService) {
		this.photoService = photoService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/photo/modify_success.jsp";
		
		String no = request.getParameter("no");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNum = request.getParameter("perPageNum");
		String page = request.getParameter("page");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		if(perPageNum == null || perPageNum.isEmpty()) perPageNum = "10";
		if(page == null || page.isEmpty()) page = "1";
		
		if(searchType==null) searchType = "";
		if(keyword==null) keyword = "";
		if(searchType.equals("")) {
			searchType = "";
			keyword="";
		}
		PhotoVO photo = new PhotoVO();
		photo.setPho_no(no);
		photo.setPho_content(content);
		photo.setPho_title(title);
		
		photoService.modifyPhoto(photo);
		
		return url;
	}

}
