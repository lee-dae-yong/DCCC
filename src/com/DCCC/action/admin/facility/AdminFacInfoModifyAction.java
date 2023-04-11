package com.DCCC.action.admin.facility;

import java.io.File;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.FacilityService;
import com.DCCC.utils.FileUploadResolver;
import com.DCCC.utils.GetUploadPath;
import com.DCCC.utils.MultipartHttpServletRequestParser;

public class AdminFacInfoModifyAction implements Action {

   private FacilityService facilityService;

   public void setFacilityService(FacilityService facilityService) {
      this.facilityService = facilityService;
   }

   // 업로드 파일 환경 설정
   private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
   private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
   private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      String url = "redirect:/admin/facility/detail.do?fac_no=";

      MultipartHttpServletRequestParser multiReq = new MultipartHttpServletRequestParser(request, MEMORY_THRESHOLD,
            MAX_FILE_SIZE, MAX_REQUEST_SIZE);

       url+=multiReq.getParameter("fac_no");

      String fac_no = multiReq.getParameter("fac_no");
      String fac_capacity = multiReq.getParameter("fac_capacity");
      String fac_floor = multiReq.getParameter("fac_floor");
      String fac_introduce = multiReq.getParameter("fac_introduce");
      String fac_name = multiReq.getParameter("fac_name");
      String fac_size = multiReq.getParameter("fac_size");
      int fac_kind = Integer.parseInt(multiReq.getParameter("fac_kind"));
      String fac_qufen = multiReq.getParameter("fac_qufen");
      String fac_category = multiReq.getParameter("fac_category");
      
      
      FacilityVO facility = new FacilityVO();
      facility.setFac_no(fac_no);
      facility.setFac_capacity(fac_capacity);
      facility.setFac_floor(fac_floor);
      facility.setFac_introduce(fac_introduce);
      facility.setFac_name(fac_name);
      facility.setFac_size(fac_size);
      facility.setFac_kind(fac_kind);
      facility.setFac_qufen(fac_qufen);
      facility.setFac_category(fac_category);

      FileItem picture = multiReq.getFileItem("fac_picture");
      if (picture.getSize() > 0) { // 사진변경
         String uploadPath = GetUploadPath.getUploadPath("facility.picture.upload");

      
       //기존 사진이미지 삭제 
         String oldPicture = multiReq.getParameter("oldPicture"); 
         File deleteFile = new File(uploadPath, oldPicture); if (deleteFile.exists()) {
       deleteFile.delete(); } // 최근 사진이미지 저장 
       List<File> fileList =FileUploadResolver.fileUpload(multiReq.getFileItems("fac_picture"),uploadPath); File saveFile = fileList.get(0);
       
       //최근 사진이미지 파일명 vo에 추가
       facility.setFac_picture(saveFile.getName());
       
        } else {
        
       facility.setFac_picture(multiReq.getParameter("oldPicture")); }
       
      
      try {
         facilityService.modifyFacility(facility);

      } catch (SQLException e) {
         e.printStackTrace();
      }
      return url;
   }

}