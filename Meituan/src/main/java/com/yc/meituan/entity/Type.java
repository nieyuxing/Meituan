package com.yc.meituan.entity;

public class Type {
	private int tid;
	private String name;
	private int tfid;
	private String ftname;
	
	public String getftname() {
		return ftname;
	}
	public void setftname(String ftname) {
		this.ftname = ftname;
	}
	public Type() {
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public int getTfid() {
		return tfid;
	}
	public void setTfid(int tfid) {
		this.tfid = tfid;
	}
	@Override
	public String toString() {
		return "Type [tid=" + tid + ", name=" + name + ", tfid=" + tfid
				+ ", ftname=" + ftname + "]";
	}
}
