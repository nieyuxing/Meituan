package com.yc.meituan.entity;

public class User {
	private int usid;
	private String usname;
	private String uspwd;
	private int telnum;
	private String email;
	private double purse;
	private int idcard;
	
	public User() {
	}
	public User(int usid, String usname, String uspwd, int telnum, String email, int purse, int idcard) {
			this.usid = usid;
			this.usname = usname;
			this.uspwd = uspwd;
			this.telnum = telnum;
			this.email = email;
			this.purse = purse;
			this.idcard = idcard;
	}
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
	public int getTelnum() {
		return telnum;
	}
	public void setTelnum(int telnum) {
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
	@Override
	public String toString() {
		return "User [usid=" + usid + ", usname=" + usname + ", uspwd=" + uspwd
				+ ", telnum=" + telnum + ", email=" + email + ", purse="
				+ purse + ", idcard=" + idcard + "]";
	}
}
