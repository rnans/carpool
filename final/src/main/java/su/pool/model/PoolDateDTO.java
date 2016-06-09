package su.pool.model;

import java.util.Date;

public class PoolDateDTO 
{
	private int idx;
	private String userid;
	private String aim;
	private String startspot;
	private String endspot;
	private String route;
	private String startcoordi;
	private String endcoordi;
	private String routecoordi;
	private Date starttime;
	private int mannum;
	private String gender;
	private int pay;
	private String smoking;
	private String pluscontent;
	private Date writedate;
	private String status;
	private String pooltype;
	private java.sql.Date startdate;
	private java.sql.Date enddate;
	private String days;
	private String location;
	private String termtype;
	private int caridx;
	private String poolname;
	private double slat;
	private double slng;
	private double elat;
	private double elng;
	private String path;
	private String point;
	
	public PoolDateDTO() {
		super();
	}

	
	
	public double getSlat() {
		return slat;
	}



	public void setSlat(double slat) {
		this.slat = slat;
	}



	public double getSlng() {
		return slng;
	}



	public void setSlng(double slng) {
		this.slng = slng;
	}



	public double getElat() {
		return elat;
	}



	public void setElat(double elat) {
		this.elat = elat;
	}



	public double getElng() {
		return elng;
	}



	public void setElng(double elng) {
		this.elng = elng;
	}



	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}



	public String getPoint() {
		return point;
	}



	public void setPoint(String point) {
		this.point = point;
	}



	public PoolDateDTO(int idx, String userid, String aim, String startspot, String endspot, String route,
			String startcoordi, String endcoordi, String routecoordi, Date starttime, int mannum, String gender,
			int pay, String smoking, String pluscontent, Date writedate, String status, String pooltype, java.sql.Date startdate,
			java.sql.Date enddate, String days, String location, String termtype, int caridx, String poolname, double slat,
			double slng, double elat, double elng, String path, String point) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.aim = aim;
		this.startspot = startspot;
		this.endspot = endspot;
		this.route = route;
		this.startcoordi = startcoordi;
		this.endcoordi = endcoordi;
		this.routecoordi = routecoordi;
		this.starttime = starttime;
		this.mannum = mannum;
		this.gender = gender;
		this.pay = pay;
		this.smoking = smoking;
		this.pluscontent = pluscontent;
		this.writedate = writedate;
		this.status = status;
		this.pooltype = pooltype;
		this.startdate = startdate;
		this.enddate = enddate;
		this.days = days;
		this.location = location;
		this.termtype = termtype;
		this.caridx = caridx;
		this.poolname = poolname;
		this.slat = slat;
		this.slng = slng;
		this.elat = elat;
		this.elng = elng;
		this.path = path;
		this.point = point;
	}



	public PoolDateDTO(int idx, String userid, String aim, String startspot, String endspot, String route,
			String startcoordi, String endcoordi, String routecoordi, Date starttime, int mannum, String gender,
			int pay, String smoking, String pluscontent, Date writedate, String status, String pooltype, java.sql.Date startdate,
			java.sql.Date enddate, String days, String location, String termtype, int caridx, String poolname) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.aim = aim;
		this.startspot = startspot;
		this.endspot = endspot;
		this.route = route;
		this.startcoordi = startcoordi;
		this.endcoordi = endcoordi;
		this.routecoordi = routecoordi;
		this.starttime = starttime;
		this.mannum = mannum;
		this.gender = gender;
		this.pay = pay;
		this.smoking = smoking;
		this.pluscontent = pluscontent;
		this.writedate = writedate;
		this.status = status;
		this.pooltype = pooltype;
		this.startdate = startdate;
		this.enddate = enddate;
		this.days = days;
		this.location = location;
		this.termtype = termtype;
		this.caridx = caridx;
		this.poolname = poolname;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAim() {
		return aim;
	}

	public void setAim(String aim) {
		this.aim = aim;
	}

	public String getStartspot() {
		return startspot;
	}

	public void setStartspot(String startspot) {
		this.startspot = startspot;
	}

	public String getEndspot() {
		return endspot;
	}

	public void setEndspot(String endspot) {
		this.endspot = endspot;
	}

	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	public String getStartcoordi() {
		return startcoordi;
	}

	public void setStartcoordi(String startcoordi) {
		this.startcoordi = startcoordi;
	}

	public String getEndcoordi() {
		return endcoordi;
	}

	public void setEndcoordi(String endcoordi) {
		this.endcoordi = endcoordi;
	}

	public String getRoutecoordi() {
		return routecoordi;
	}

	public void setRoutecoordi(String routecoordi) {
		this.routecoordi = routecoordi;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public int getMannum() {
		return mannum;
	}

	public void setMannum(int mannum) {
		this.mannum = mannum;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getSmoking() {
		return smoking;
	}

	public void setSmoking(String smoking) {
		this.smoking = smoking;
	}

	public String getPluscontent() {
		return pluscontent;
	}

	public void setPluscontent(String pluscontent) {
		this.pluscontent = pluscontent;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPooltype() {
		return pooltype;
	}

	public void setPooltype(String pooltype) {
		this.pooltype = pooltype;
	}

	public java.sql.Date getStartdate() {
		return startdate;
	}

	public void setStartdate(java.sql.Date startdate) {
		this.startdate = startdate;
	}

	public java.sql.Date getEnddate() {
		return enddate;
	}

	public void setEnddate(java.sql.Date enddate) {
		this.enddate = enddate;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTermtype() {
		return termtype;
	}

	public void setTermtype(String termtype) {
		this.termtype = termtype;
	}

	public int getCaridx() {
		return caridx;
	}

	public void setCaridx(int caridx) {
		this.caridx = caridx;
	}

	public String getPoolname() {
		return poolname;
	}

	public void setPoolname(String poolname) {
		this.poolname = poolname;
	}

	
	
}