package com.DCCC.dto;

import java.util.Date;
import java.util.List;

public class TeacherVO {

	private String tch_id;
	private String tch_pwd;
	private String tch_picture;
	private String tch_name;
	private String tch_address;
	private String tch_birth;
	private String tch_phone;
	private String tch_license;
	private Date tch_regDate;
	private List<ProgramVO> prgList;
	
	   
	   
	public List<ProgramVO> getPrgList() {
	      return prgList;
	   }
	
	public void setPrgList(List<ProgramVO> prgList) {
		this.prgList = prgList;
	}

	public TeacherVO() {
		
	}
	
	public String getTch_id() {
		return tch_id;
	}
	public void setTch_id(String tch_id) {
		this.tch_id = tch_id;
	}
	public String getTch_pwd() {
		return tch_pwd;
	}
	public void setTch_pwd(String tch_pwd) {
		this.tch_pwd = tch_pwd;
	}
	public String getTch_picture() {
		return tch_picture;
	}
	public void setTch_picture(String tch_picture) {
		this.tch_picture = tch_picture;
	}
	public String getTch_name() {
		return tch_name;
	}
	public void setTch_name(String tch_name) {
		this.tch_name = tch_name;
	}
	public String getTch_address() {
		return tch_address;
	}
	public void setTch_address(String tch_address) {
		this.tch_address = tch_address;
	}
	public String getTch_birth() {
		return tch_birth;
	}
	public void setTch_birth(String tch_birth) {
		this.tch_birth = tch_birth;
	}
	public String getTch_phone() {
		return tch_phone;
	}
	public void setTch_phone(String tch_phone) {
		this.tch_phone = tch_phone;
	}
	public String getTch_license() {
		return tch_license;
	}
	public void setTch_license(String tch_license) {
		this.tch_license = tch_license;
	}
	public Date getTch_regDate() {
		return tch_regDate;
	}
	public void setTch_regDate(Date tch_regDate) {
		this.tch_regDate = tch_regDate;
	}
	
	
}
