package com.DCCC.dto;

import java.util.Date;

public class SuggestionVO {
	private String sug_no;
	private String sug_title;
	private String sug_content;
	private int sug_viewcnt;
	private Date sug_regDate;
	private Date sug_udtDate;
	private String mem_id;
	private String sug_replyContent;
	private Date sug_replyRegDate;
	private String adm_id;
	private String sug_rock;
	public String getSug_no() {
		return sug_no;
	}
	public void setSug_no(String sug_no) {
		this.sug_no = sug_no;
	}
	public String getSug_title() {
		return sug_title;
	}
	public void setSug_title(String sug_title) {
		this.sug_title = sug_title;
	}
	public String getSug_content() {
		return sug_content;
	}
	public void setSug_content(String sug_content) {
		this.sug_content = sug_content;
	}
	public int getSug_viewcnt() {
		return sug_viewcnt;
	}
	public void setSug_viewcnt(int sug_viewcnt) {
		this.sug_viewcnt = sug_viewcnt;
	}
	public Date getSug_regDate() {
		return sug_regDate;
	}
	public void setSug_regDate(Date sug_regDate) {
		this.sug_regDate = sug_regDate;
	}
	public Date getSug_udtDate() {
		return sug_udtDate;
	}
	public void setSug_udtDate(Date sug_udtDate) {
		this.sug_udtDate = sug_udtDate;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getSug_replyContent() {
		return sug_replyContent;
	}
	public void setSug_replyContent(String sug_replyContent) {
		this.sug_replyContent = sug_replyContent;
	}
	public Date getSug_replyRegDate() {
		return sug_replyRegDate;
	}
	public void setSug_replyRegDate(Date sug_replyRegDate) {
		this.sug_replyRegDate = sug_replyRegDate;
	}
	public String getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}
	public String getSug_rock() {
		return sug_rock;
	}
	public void setSug_rock(String sug_rock) {
		this.sug_rock = sug_rock;
	}
	
}
