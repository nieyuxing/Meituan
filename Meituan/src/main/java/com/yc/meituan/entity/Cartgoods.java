package com.yc.meituan.entity;

public class Cartgoods {
	private int usid;
	private int gid;
	private Good good;
	private int gnum;
	private double cgprice;

	public Cartgoods() {
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public int getUsid() {
		return usid;
	}

	public void setUsid(int usid) {
		this.usid = usid;
	}

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}

	public double getCgprice() {
		return cgprice;
	}

	public void setCgprice(double cgprice) {
		this.cgprice = cgprice;
	}

	@Override
	public String toString() {
		return "Cartgoods [usid=" + usid + ", gid=" + gid + ", good=" + good + ", gnum=" + gnum + ", cgprice=" + cgprice
				+ "]";
	}


}
