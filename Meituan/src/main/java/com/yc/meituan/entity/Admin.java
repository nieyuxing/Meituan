package com.yc.meituan.entity;

public class Admin {
	private int aid;
	private String aname;
	private String pwd;
	public Admin() {
		super();
	}
	public  Admin(String aname,String pwd){
    	this.aname=aname;
    	this.pwd=pwd;
    }
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", pwd=" + pwd + "]";
	}
}
