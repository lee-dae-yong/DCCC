package com.DCCC.action.admin;

import java.io.File;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;

import com.DCCC.action.Action;
import com.DCCC.dto.TeacherVO;
import com.DCCC.service.TeacherService;
import com.DCCC.utils.FileUploadResolver;
import com.DCCC.utils.GetUploadPath;
import com.DCCC.utils.MultipartHttpServletRequestParser;

public class TeacherModifyAction implements Action {

	private TeacherService teacherService;

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "redirect:/admin/teacher/detail.do?tch_id=";

		MultipartHttpServletRequestParser multiReq = new MultipartHttpServletRequestParser(request, MEMORY_THRESHOLD,
				MAX_FILE_SIZE, MAX_REQUEST_SIZE);

		url += multiReq.getParameter("tch_id");

		String tch_id = multiReq.getParameter("tch_id");
		String tch_pwd = multiReq.getParameter("tch_pwd");
		String tch_name = multiReq.getParameter("tch_name");
		String tch_phone = multiReq.getParameter("tch_phone");
		String tch_license = multiReq.getParameter("tch_license");

		TeacherVO teacher = new TeacherVO();
		teacher.setTch_id(tch_id);
		teacher.setTch_pwd(tch_pwd);
		teacher.setTch_name(tch_name);
		teacher.setTch_phone(tch_phone);
		teacher.setTch_license(tch_license);

		FileItem tch_picture = multiReq.getFileItem("tch_picture");
		if (tch_picture.getSize() > 0) { // 사진변경
			// 저장경로
			String uploadPath = GetUploadPath.getUploadPath("teacher.picture.upload");

			// 기존 사진이미지 삭제
			String oldPicture = multiReq.getParameter("oldPicture");
			File deleteFile = new File(uploadPath, oldPicture);
			if (deleteFile.exists()) {
				deleteFile.delete();
			}

			// 최근 사진이미지 저장
			List<File> fileList = FileUploadResolver.fileUpload(multiReq.getFileItems("tch_picture"), uploadPath);
			File saveFile = fileList.get(0);

			// 최근 사진이미지 파일명 vo에 추가
			teacher.setTch_picture(saveFile.getName());
		} else {
			teacher.setTch_picture(multiReq.getParameter("oldPicture"));
		}

		try {
			teacherService.modify(teacher);

			HttpSession session = request.getSession();
			TeacherVO loginUser = (TeacherVO) session.getAttribute("loginUser");
			if (loginUser != null && teacher.getTch_id().equals(loginUser.getTch_id())) {
				TeacherVO targetObj = teacherService.getTeacherById(tch_id);
				session.setAttribute("loginUser", targetObj);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}