package com.yc.meituan.entity;

public class User {
	private int usid;
	private String usname;
	private String uspwd;
	private String telnum; // --电话
	private String email; // --邮箱
	private double purse; // --钱包余额
	private String idcard; // --身份证号码
	private String text2;

	public User() {
	}


	public String getText2() {
		return text2;
	}


	public void setText2(String text2) {
		this.text2 = text2;
	}


	public void setPurse(double purse) {
		this.purse = purse;
	}


	public User(int usid, String usname, String uspwd, String telnum,
			String email, double purse, String idcard, String text2) {
		super();
		this.usid = usid;
		this.usname = usname;
		this.uspwd = uspwd;
		this.telnum = telnum;
		this.email = email;
		this.purse = purse;
		this.idcard = idcard;
		this.text2 = text2;
	}



	public User(String uspwd, String email) {
		this.uspwd = uspwd;
		this.email = email;
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

	public void setPurse(int purse) {
		this.purse = purse;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}


	@Override
	public String toString() {
		return "User [usid=" + usid + ", usname=" + usname + ", uspwd=" + uspwd
				+ ", telnum=" + telnum + ", email=" + email + ", purse="
				+ purse + ", idcard=" + idcard + ", text2=" + text2 + "]";
	}

	
}
