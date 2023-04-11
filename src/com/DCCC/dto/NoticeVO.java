package com.DCCC.dto;

import java.util.Date;

public class NoticeVO {
	private String ntc_no;
	private String ntc_title;
	private String ntc_content;
	private int ntc_viewcnt;
	private Date ntc_regDate;
	private Date ntc_updateDate;
	private String adm_id;
	private Date ntc_startDate;
	private Date ntc_endDate;
	
	public String getNtc_no() {
		return ntc_no;
	}
	public void setNtc_no(String ntc_no) {
		this.ntc_no = ntc_no;
	}
	public String getNtc_title() {
		return ntc_title;
	}
	public void setNtc_title(String ntc_title) {
		this.ntc_title = ntc_title;
	}
	public String getNtc_content() {
		return ntc_content;
	}
	public void setNtc_content(String ntc_content) {
		this.ntc_content = ntc_content;
	}
	
	public int getNtc_viewcnt() {
		return ntc_viewcnt;
	}
	public void setNtc_viewcnt(int ntc_viewcnt) {
		this.ntc_viewcnt = ntc_viewcnt;
	}
	public Date getNtc_regDate() {
		return ntc_regDate;
	}
	public void setNtc_regDate(Date ntc_regDate) {
		this.ntc_regDate = ntc_regDate;
	}
	public Date getNtc_updateDate() {
		return ntc_updateDate;
	}
	public void setNtc_updateDate(Date ntc_updateDate) {
		this.ntc_updateDate = ntc_updateDate;
	}
	public String getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}
	public Date getNtc_startDate() {
		return ntc_startDate;
	}
	public void setNtc_startDate(Date ntc_startDate) {
		this.ntc_startDate = ntc_startDate;
	}
	public Date getNtc_endDate() {
		return ntc_endDate;
	}
	public void setNtc_endDate(Date ntc_endDate) {
		this.ntc_endDate = ntc_endDate;
	}
	
}
