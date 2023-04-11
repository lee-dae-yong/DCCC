package com.DCCC.dto;

import java.util.Date;

public class AdminVO {
   private String adm_id;
   private String adm_name;
   private String adm_pwd;
   private String adm_phone;
   private int adm_rank;
   private String adm_email;
   private Date adm_startDate;
   private String adm_dep;
   private String adm_pic;
   
   
   
   
    
   
   public String getAdm_pic() {
      return adm_pic;
   }
   public void setAdm_pic(String adm_pic) {
      this.adm_pic = adm_pic;
   }
   public String getAdm_dep() {
      return adm_dep;
   }
   public void setAdm_dep(String adm_dep) {
      this.adm_dep = adm_dep;
   }
   public String getAdm_id() {
      return adm_id;
   }
   public void setAdm_id(String adm_id) {
      this.adm_id = adm_id;
   }
   public String getAdm_name() {
      return adm_name;
   }
   public void setAdm_name(String adm_name) {
      this.adm_name = adm_name;
   }
   public String getAdm_pwd() {
      return adm_pwd;
   }
   public void setAdm_pwd(String adm_pwd) {
      this.adm_pwd = adm_pwd;
   }
   public String getAdm_phone() {
      return adm_phone;
   }
   public void setAdm_phone(String adm_phone) {
      this.adm_phone = adm_phone;
   }
   public int getAdm_rank() {
      return adm_rank;
   }
   public void setAdm_rank(int adm_rank) {
      this.adm_rank = adm_rank;
   }
   public void setAdm_rank(String adm_rank) {
      this.adm_rank = Integer.parseInt(adm_rank);
   }
   public String getAdm_email() {
      return adm_email;
   }
   public void setAdm_email(String adm_email) {
      this.adm_email = adm_email;
   }
   public Date getAdm_startDate() {
      return adm_startDate;
   }
   public void setAdm_startDate(Date adm_startDate) {
      this.adm_startDate = adm_startDate;
   }

   
   
}