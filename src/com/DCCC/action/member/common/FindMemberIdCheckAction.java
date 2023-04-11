package com.DCCC.action.member.common;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.MemberVO;
import com.DCCC.service.SessionService;
import com.DCCC.utils.MailContentSend;

public class FindMemberIdCheckAction implements Action{

	private SessionService sessionService;
	
	public void setSessionService(SessionService sessionService) {
		this.sessionService = sessionService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		MemberVO member = new MemberVO();
		
		member.setMem_name(name);
		member.setMem_phone(phone);
		member.setMem_email(email);
		
		int result = sessionService.findMemberId(member);
		
		if(result == 1) {
			
			member = sessionService.getMemberForGetId(member);
			String mailSet_Server="smtp.naver.com"; // 보내는 메일 server
			String mailSet_ID="daeyong0715";        // 보내는 메일 ID
			String mailSet_PW="hj3014024769";        // 보내는 메일 비밀번호
			
			String mailFromName ="대전시민 복합문화센터 입니다.";            // 보내는 사람 이름
			String mailFromAddress ="<daeyong0715@naver.com>"; // 보내는 메일 주소
			
			String mailTo   = request.getParameter("email");           // 받는  메일 주소
			String mailTitle ="DCCC 찾으신 아이디 발송";   // 메일 제목
			String content = "고객님의 ID는 " + member.getMem_id() + "입니다"; // 메일내용
			
			String mailFrom="";
			try {
				 mailFrom =new String(mailFromName.getBytes("utf-8"), "8859_1")+mailFromAddress;
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			MailContentSend ms = new MailContentSend();
			ms.setMail(mailSet_Server, mailSet_ID, mailSet_PW);
			try { 
				ms.sendMail(mailFrom,mailTo, mailTitle, content);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.setContentType("text/plain;charset=utf-8");
			url = "loginForm.do?error=5";
			PrintWriter out = response.getWriter();
			out.print(url);
			out.close();
			
			
			
		}else {
			String error = "없는 정보입니다 다시 입력해주세요.";
			url = "findMemberIdForm.do?error="+error;
			response.setContentType("text/plain;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(url);
			out.close();
		}
		
		return url;
	}

}
