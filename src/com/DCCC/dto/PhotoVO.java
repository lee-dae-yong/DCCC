package com.DCCC.dto;

import java.util.Date;

public class PhotoVO {
	
	private String pho_no;
	private String pho_title;
	private String pho_content;
	private String pho_viewcnt;
	private Date pho_regDate;
	private Date pho_udtDate;
	private String adm_id;
	public String getPho_no() {
		return pho_no;
	}
	public void setPho_no(String pho_no) {
		this.pho_no = pho_no;
	}
	public String getPho_title() {
		return pho_title;
	}
	public void setPho_title(String pho_title) {
		this.pho_title = pho_title;
	}
	public String getPho_content() {
		return pho_content;
	}
	public void setPho_content(String pho_content) {
		this.pho_content = pho_content;
	}
	public String getPho_viewcnt() {
		return pho_viewcnt;
	}
	public void setPho_viewcnt(String pho_viewcnt) {
		this.pho_viewcnt = pho_viewcnt;
	}
	public Date getPho_regDate() {
		return pho_regDate;
	}
	public void setPho_regDate(Date pho_regDate) {
		this.pho_regDate = pho_regDate;
	}
	public Date getPho_udtDate() {
		return pho_udtDate;
	}
	public void setPho_udtDate(Date pho_udtDate) {
		this.pho_udtDate = pho_udtDate;
	}
	public String getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}
	
}
