package com.DCCC.dto;

import java.sql.Date;

public class ReplyVO {

	private int rno;
	private String brd_no;
	private String replytext;
	private Date regdate;
	private Date updatedate;
	private String mem_id;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(String brd_no) {
		this.brd_no = brd_no;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
