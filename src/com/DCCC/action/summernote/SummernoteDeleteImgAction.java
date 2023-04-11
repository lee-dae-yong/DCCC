package com.DCCC.action.summernote;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.utils.GetUploadPath;


public class SummernoteDeleteImgAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String fileName = request.getParameter("fileName");
		String savePath = GetUploadPath.getUploadPath("summernote.img");
		
		File target = new File(savePath + File.separator + fileName);
		
		if (target.exists()) {
			target.delete();
			
			response.setContentType("text/plain;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(fileName + " 이미지를 삭제했습니다.");
		}
		
		return url;
	}

}
