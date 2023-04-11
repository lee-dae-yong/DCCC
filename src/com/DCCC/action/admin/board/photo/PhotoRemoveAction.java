package com.DCCC.action.admin.board.photo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.service.PhotoService;

public class PhotoRemoveAction implements Action{

	private PhotoService photoService;

	public void setPhotoService(PhotoService photoService) {
		this.photoService = photoService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/photo/remove_success.jsp";
		
		String no = request.getParameter("no");
		
		photoService.removePhoto(no);
		return url;
	}

}
