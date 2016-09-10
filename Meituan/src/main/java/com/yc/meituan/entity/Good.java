package com.yc.meituan.entity;

public class Good {
	private int gid;
	private String gname;
	private double gprice;
	private String gpic;
	private String gdetails;
	private String sname;
	private String sdetail;
	private int gcount;
	private int ecount;
	private int tid;
		
	public Good() {
	}

	public Good(int gid, String gname, double gprice, String gpic, String gdetails, String sname, String sdetail,
			int gcount, int ecount) {
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gpic = gpic;
		this.gdetails = gdetails;
		this.sname = sname;
		this.sdetail = sdetail;
		this.gcount = gcount;
		this.ecount = ecount;
	}

	public String getsdetail() {
		return sdetail;
	}

	public void setsdetail(String sdetail) {
		this.sdetail = sdetail;
	}

	public int getGcount() {
		return gcount;
	}

	public void setGcount(int gcount) {
		this.gcount = gcount;
	}

	public int getEcount() {
		return ecount;
	}

	public void setEcount(int ecount) {
		this.ecount = ecount;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public double getGprice() {
		return gprice;
	}

	public void setGprice(double gprice) {
		this.gprice = gprice;
	}

	public String getGpic() {
		return gpic;
	}

	public void setGpic(String gpic) {
		this.gpic = gpic;
	}

	public String getGdetails() {
		return gdetails;
	}

	public void setGdetails(String gdetails) {
		this.gdetails = gdetails;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	@Override
	public String toString() {
		return "\nGood [gid=" + gid + ", gname=" + gname + ", gprice=" + gprice + ", gpic=" + gpic + ", gdetails="
				+ gdetails + ", sname=" + sname + ", sdetail=" + sdetail + ", gcount=" + gcount + ", ecount=" + ecount
				+ ", tid=" + tid + "]";
	}

}
