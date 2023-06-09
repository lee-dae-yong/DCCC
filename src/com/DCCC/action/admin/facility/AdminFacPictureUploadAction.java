package com.DCCC.action.admin.facility;

import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import com.DCCC.action.Action;
import com.DCCC.utils.FileUploadResolver;
import com.DCCC.utils.GetUploadPath;
import com.DCCC.utils.MultipartHttpServletRequestParser;

public class AdminFacPictureUploadAction implements Action{
	
	private static final int MEMORY_THRESHOLD = 1024 * 500;
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1;
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2;
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = null;
		
		// 1. request 변환
		MultipartHttpServletRequestParser multi 
			= new MultipartHttpServletRequestParser(request, MEMORY_THRESHOLD,
				MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		
		// 2. 저장할 경로
		String uploadPath = GetUploadPath.getUploadPath("facility.picture.upload");
		
		// 3. 업로드된 이미지 저장
		FileItem[] items = multi.getFileItems("pictureFile");
		List<File> uploadFiles = FileUploadResolver.fileUpload(items, uploadPath);
		
		// 4. 이전 이미지 삭제
		String oldPicture = multi.getParameter("oldPicture");
		File oldFile = new File(uploadPath + File.separator + oldPicture);
		if (oldFile.exists()) {
			oldFile.delete();
		}
		
		// 5. 저장한 파일명 보내기
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String uploadFileName = uploadFiles.get(0).getName();
		out.print(uploadFileName);
		
		return url;
	}

}
