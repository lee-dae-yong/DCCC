package com.DCCC.action.member.program;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DCCC.action.Action;
import com.DCCC.dto.AttendanceVO;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.AttendanceService;

public class ProgramAppliAction implements Action {
	private AttendanceService attendanceService;
	

	public AttendanceService getAttendanceService() {
		return attendanceService;
	}


	public void setAttendanceService(AttendanceService attendanceService) {
		this.attendanceService = attendanceService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/member/program/appli.jsp";
		HttpSession session=request.getSession();
		String message="";
		String prg_code=request.getParameter("prg_code");
		MemberVO member=(MemberVO) session.getAttribute("loginUser");
		
		
		if(member!=null){
		message="신청되었습니다.";
		String mem_id=member.getMem_id();
		String att_status="신청완료";
		
		AttendanceVO attendance=new AttendanceVO();
		attendance.setMem_id(mem_id);
		attendance.setPrg_code(prg_code);
		attendance.setAtt_status(att_status);
		
		try {
		attendanceService.registAttendance(attendance);
		}catch(Exception e) {
			e.printStackTrace();
			message="이미 등록한 프로그램입니다.";
		}
		}else {
			message="로그인을 해주세요";
		}
		
		request.setAttribute("prg_code", prg_code);
		request.setAttribute("message",message);
		//System.out.println(prg_code);
		
		
		
		
		
		return url;
	}
	
	
}
