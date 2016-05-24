package su.adminPool.model;

import java.sql.Date;

public class AdminUserPoolDTO {
	
	private int idx;
	private String userid;
	private String aim;
	private String startspot;
	private String endspot;
	private String route;
	private String startcoordi;
	private String endcoordi;
	private String routecoordi;
	private String starttime;
	private int mannum;
	private String gender;
	private int pay;
	private String smoking;
	private String pluscontent;
	private Date writedate;
	private String status;
	private String pooltype;
	private String startdate;
	private String enddate;
	private String days;
	private String location;
	private String termtype;
	private int caridx;
	private String poolname;
	
	public AdminUserPoolDTO() {
		super();
	}

	public AdminUserPoolDTO(int idx, String userid, String aim, String startspot, String endspot, String route,
			String startcoordi, String endcoordi, String routecoordi, String starttime, int mannum, String gender,
			int pay, String smoking, String pluscontent, Date writedate, String status, String pooltype,
			String startdate, String enddate, String days, String location, String termtype, int caridx,
			String poolname) {
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

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
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

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
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
