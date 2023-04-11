package com.DCCC.action.member.common;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.utils.MailContentSend;

public class SendMailAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int number = new Random().nextInt(1000000) + 100000;
		if(number >= 1000000) number -= 100000;
		
		
		String mailSet_Server="smtp.naver.com"; // 보내는 메일 server
		String mailSet_ID="daeyong0715";        // 보내는 메일 ID
		String mailSet_PW="hj3014024769";        // 보내는 메일 비밀번호
		
		String mailFromName ="대전시민 복합문화센터 입니다.";            // 보내는 사람 이름
		String mailFromAddress ="<daeyong0715@naver.com>"; // 보내는 메일 주소
		
		String mailTo   = request.getParameter("email");           // 받는  메일 주소
		String mailTitle ="DCCC에서 회원가입 확인";   // 메일 제목
		String content = "인증번호는 " + number + "입니다"; // 메일내용
		
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
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(number);
		
		return null;
	}

}
