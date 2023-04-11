package com.DCCC.action.member.rental;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.FacilityVO;
import com.DCCC.service.FacilityService;
import com.DCCC.utils.FileDownloadResolver;
import com.DCCC.utils.GetUploadPath;

public class MemberRentalGetPictureAction implements Action{
	
	private FacilityService facilityService;
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String fac_no = request.getParameter("fac_no");
		FacilityVO facility = facilityService.getFacilityByFac_no(fac_no);
		
		String fileName = facility.getFac_picture();
		String savedPath = GetUploadPath.getUploadPath("facility.picture.upload");
		
		FileDownloadResolver.sendFile(fileName, savedPath, request, response);
		
		return url;
	}

}
