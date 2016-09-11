package com.yc.meituan.entity;

public class Order {
	private int oid;
	private String otime;
	private String oroom;
	private User user;
	private String telnumber;
	private int status;
	private int alls;
	private int allorder;
	private int alluser;
	private int morder;
	
	
	
	public int getMorder() {
		return morder;
	}
	public void setMorder(int morder) {
		this.morder = morder;
	}
	public int getAlluser() {
		return alluser;
	}
	public void setAlluser(int alluser) {
		this.alluser = alluser;
	}
	public int getAllorder() {
		return allorder;
	}
	public void setAllorder(int allorder) {
		this.allorder = allorder;
	}
	public int getAlls() {
		return alls;
	}
	public void setAlls(int alls) {
		this.alls = alls;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public String getOroom() {
		return oroom;
	}
	public void setOroom(String oroom) {
		this.oroom = oroom;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getTelnumber() {
		return telnumber;
	}
	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "\nOrder [oid=" + oid + ", otime=" + otime + ", oroom=" + oroom
				+ ", user=" + user + ", telnumber=" + telnumber + ", status="
				+ status + "]";
	}
	public Order() {
	}
	public Order(int oid, String otime, String oroom, User user,
			String telnumber, int status) {
		this.oid = oid;
		this.otime = otime;
		this.oroom = oroom;
		this.user = user;
		this.telnumber = telnumber;
		this.status = status;
	}
	
	
}
