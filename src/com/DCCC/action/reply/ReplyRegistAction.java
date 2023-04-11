package com.DCCC.action.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.dto.ReplyVO;
import com.DCCC.service.ReplyService;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ReplyRegistAction implements Action{

	private ReplyService replyService;
	
	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		ObjectMapper mapper = new ObjectMapper();
		ReplyVO reply = mapper.readValue(request.getReader(), ReplyVO.class);
		
		System.out.println("replyer : " + reply.getMem_id());
		
		return url;
	}

}
