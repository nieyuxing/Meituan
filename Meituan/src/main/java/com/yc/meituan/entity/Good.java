package com.yc.meituan.entity;

public class Good {
	private int gid;
	private String gname;
	private double gprice;
	private String gpic;
	private String gdetails;
	private String sname;
	
	public Good() {
		super();
	}

	public Good(int gid, String gname, double gprice, String gpic,
			String gdetails, String sname) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gpic = gpic;
		this.gdetails = gdetails;
		this.sname = sname;
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

	@Override
	public String toString() {
		return "Good [gid=" + gid + ", gname=" + gname + ", gprice=" + gprice
				+ ", gpic=" + gpic + ", gdetails=" + gdetails + ", sname="
				+ sname + "]";
	}
}
