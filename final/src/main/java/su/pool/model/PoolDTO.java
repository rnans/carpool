package su.pool.model;

public class PoolDTO 
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
	private String starttime;
	private int mannum;
	private String gender;
	private int pay;
	private String smoking;
	private String pluscontent;
	private String wirtedate;
	private String status;
	private String type;
	private String startdate;
	private String enddate;
	private String days;
	private String location;
	
	

	public PoolDTO(int idx, String userid, String aim, String startspot, String endspot, String route,
			String startcoordi, String endcoordi, String routecoordi, String starttime, int mannum, String gender,
			int pay, String smoking, String pluscontent, String wirtedate, String status, String type, String startdate,
			String enddate, String days, String location) {
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
		this.wirtedate = wirtedate;
		this.status = status;
		this.type = type;
		this.startdate = startdate;
		this.enddate = enddate;
		this.days = days;
		this.location = location;
	}


	public PoolDTO(String aim, String startspot, String endspot, String route, String starttime, int mannum,
			String gender, String smoking, String pluscontent) {
		super();
		this.aim = aim;
		this.startspot = startspot;
		this.endspot = endspot;
		this.route = route;
		this.starttime = starttime;
		this.mannum = mannum;
		this.gender = gender;
		this.smoking = smoking;
		this.pluscontent = pluscontent;
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
	public void setPay(int number) {
		this.pay = number;
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
	public String getWirtedate() {
		return wirtedate;
	}
	public void setWirtedate(String wirtedate) {
		this.wirtedate = wirtedate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	
	
	
}


