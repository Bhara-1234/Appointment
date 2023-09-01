package com.models;

import java.sql.Date;
import java.time.LocalDate;

public class DoctorSlots {
	int s_id,s_docid;
	LocalDate s_date;
	String s_ftime,s_ttime,s_status;
	public DoctorSlots() {
		
	}
	public int getS_id() {
		return s_id;
	}
	public int getS_docid() {
		return s_docid;
	}
	public LocalDate getS_date() {
		return s_date;
	}
	public String getS_ftime() {
		return s_ftime;
	}
	public String getS_ttime() {
		return s_ttime;
	}
	public String getS_status() {
		return s_status;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public void setS_docid(int s_docid) {
		this.s_docid = s_docid;
	}
	public void setS_date(LocalDate s_date) {
		this.s_date = s_date;
	}
	public void setS_ftime(String s_ftime) {
		this.s_ftime = s_ftime;
	}
	public void setS_ttime(String s_ttime) {
		this.s_ttime = s_ttime;
	}
	public void setS_status(String s_status) {
		this.s_status = s_status;
	}

}
