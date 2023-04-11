package com.DCCC.dto;

import java.util.Date;

public class FreeboardVO {
	private String brd_no;
	private String brd_title;
	private String brd_content;
	private int brd_viewcnt;
	private Date brd_regDate;
	private Date brd_udtDate;
	private String mem_id;
	private int replycnt;
	
	public int getReplycnt() {
		return replycnt;
	}
	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}
	public String getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(String brd_no) {
		this.brd_no = brd_no;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public int getBrd_viewcnt() {
		return brd_viewcnt;
	}
	public void setBrd_viewcnt(int brd_viewcnt) {
		this.brd_viewcnt = brd_viewcnt;
	}
	public Date getBrd_regDate() {
		return brd_regDate;
	}
	public void setBrd_regDate(Date brd_regDate) {
		this.brd_regDate = brd_regDate;
	}
	public Date getBrd_udtDate() {
		return brd_udtDate;
	}
	public void setBrd_udtDate(Date brd_udtDate) {
		this.brd_udtDate = brd_udtDate;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
}
