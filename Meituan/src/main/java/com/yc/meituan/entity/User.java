package com.yc.meituan.entity;

public class User {
	private int usid;
	private String usname;
	private String uspwd;
	private String telnum;
	private String email;
	private double purse;
	private int idcard;
	private String text1;
	private String text2;
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getUsname() {
		return usname;
	}
	public void setUsname(String usname) {
		this.usname = usname;
	}
	public String getUspwd() {
		return uspwd;
	}
	public void setUspwd(String uspwd) {
		this.uspwd = uspwd;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public double getPurse() {
		return purse;
	}
	public void setPurse(double purse) {
		this.purse = purse;
	}
	public int getIdcard() {
		return idcard;
	}
	public void setIdcard(int idcard) {
		this.idcard = idcard;
	}
	public String getText1() {
		return text1;
	}
	public void setText1(String text1) {
		this.text1 = text1;
	}
	public String getText2() {
		return text2;
	}
	public void setText2(String text2) {
		this.text2 = text2;
	}
	@Override
	public String toString() {
		return "User [usid=" + usid + ", usname=" + usname + ", uspwd=" + uspwd
				+ ", telnum=" + telnum + ", email=" + email + ", purse="
				+ purse + ", idcard=" + idcard + ", text1=" + text1
				+ ", text2=" + text2 + "]";
	}
}
