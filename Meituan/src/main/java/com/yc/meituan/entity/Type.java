package com.yc.meituan.entity;

public class Type {
	private int tid;
	private String tname;
	private int tfid;
	
	public Type() {
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getTfid() {
		return tfid;
	}
	public void setTfid(int tfid) {
		this.tfid = tfid;
	}
	@Override
	public String toString() {
		return "Type [tid=" + tid + ", tname=" + tname + ", tfid=" + tfid + "]";
	}
}
