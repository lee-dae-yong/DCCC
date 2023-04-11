package com.DCCC.action.member.board.photo;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.PhotoVO;
import com.DCCC.service.PhotoService;

public class PhotoDetailAction implements Action{

	private PhotoService photoService;

	public void setPhotoService(PhotoService photoService) {
		this.photoService = photoService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/board/photo/detail.jsp";
		
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
		if(from.equals("list")) {
			url = "redirect:/member/board/photo/detail.do?no=" + no+"&searchType="+searchType+"&keyword="+URLEncoder.encode(keyword,"utf-8")+"&perPageNum="+perPageNum+"&page="+page;
			
			photoService.increasePhotoViewCnt(no);
		}
		else {
			photo = photoService.getPhoto(no);
			request.setAttribute("photo", photo);
		}
		return url;
	}

}
