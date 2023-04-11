package com.DCCC.dto;

import java.sql.Date;

public class BookingViewVO {

	private String book_no;
	private Date book_date;
	private String book_time;
	private String mem_id;
	private String mem_name;
	private String mem_phone;
	private String fac_no;
	private String fac_floor;
	private String fac_name;
	private String fac_capacity;
	
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getBook_no() {
		return book_no;
	}
	public void setBook_no(String book_no) {
		this.book_no = book_no;
	}
	public Date getBook_date() {
		return book_date;
	}
	public void setBook_date(Date book_date) {
		this.book_date = book_date;
	}
	public String getBook_time() {
		return book_time;
	}
	public void setBook_time(String book_time) {
		this.book_time = book_time;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getFac_no() {
		return fac_no;
	}
	public void setFac_no(String fac_no) {
		this.fac_no = fac_no;
	}
	public String getFac_floor() {
		return fac_floor;
	}
	public void setFac_floor(String fac_floor) {
		this.fac_floor = fac_floor;
	}
	public String getFac_name() {
		return fac_name;
	}
	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}
	public String getFac_capacity() {
		return fac_capacity;
	}
	public void setFac_capacity(String fac_capacity) {
		this.fac_capacity = fac_capacity;
	}
	
	
	
}
