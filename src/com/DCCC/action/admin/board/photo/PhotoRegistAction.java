package com.DCCC.action.admin.board.photo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.PhotoVO;
import com.DCCC.service.PhotoService;

public class PhotoRegistAction implements Action{

	private PhotoService photoService;

	public void setPhotoService(PhotoService photoService) {
		this.photoService = photoService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/admin/board/photo/regist_success.jsp";
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		PhotoVO photo = new PhotoVO();
		photo.setAdm_id(writer);
		photo.setPho_title(title);
		photo.setPho_content(content);
		
		photoService.registPhoto(photo);
		
		return url;
	}

}
