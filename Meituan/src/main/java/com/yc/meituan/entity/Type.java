package com.yc.meituan.entity;

public class Type {
	private int tid;
	private String tname;
	private int tfid;
	private String name;
	
	
	public Type() {
	}
	
	
	public Type(int tid, String tname, int tfid, String name) {
		this.tid = tid;
		this.tname = tname;
		this.tfid = tfid;
		this.name = name;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "\nType [tid=" + tid + ", tname=" + tname + ", tfid=" + tfid + ", name=" + name + "]";
	}
	
	
}
