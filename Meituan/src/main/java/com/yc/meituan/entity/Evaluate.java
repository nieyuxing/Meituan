package com.yc.meituan.entity;

public class Evaluate {
	private int eid;
	private String uname; 
	private String gname;
	private String econtent;
	private String edate;
	private int state;
	private String epics;
	/**
	 * 构造函数
	 */
	public Evaluate() {
		super();
	}
	/**
	 * getset方法
	 * @return
	 */
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getEcontent() {
		return econtent;
	}
	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getEpics() {
		return epics;
	}
	public void setEpics(String epics) {
		this.epics = epics;
	}
	/**
	 * toString方法
	 */
	@Override
	public String toString() {
		return "Evaluate [eid=" + eid + ", uname=" + uname + ", gname=" + gname
				+ ", econtent=" + econtent + ", edate=" + edate + ", state="
				+ state + ", epics=" + epics + "]";
	}
	
}
