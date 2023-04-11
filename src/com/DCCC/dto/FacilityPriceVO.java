package com.DCCC.dto;

public class FacilityPriceVO {

	private String fac_no;
	private String weekday_price;
	private String weekend_price;
	
	
	public String getFac_no() {
		return fac_no;
	}
	public void setFac_no(String fac_no) {
		this.fac_no = fac_no;
	}
	public String getWeekday_price() {
		return weekday_price;
	}
	public void setWeekday_price(String weekday_price) {
		this.weekday_price = weekday_price;
	}
	public String getWeekend_price() {
		return weekend_price;
	}
	public void setWeekend_price(String weekend_price) {
		this.weekend_price = weekend_price;
	}
	
	
}
