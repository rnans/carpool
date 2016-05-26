package su.adminReserve.model;

public class AdminPoolMasterStatusDTO {

	private int idx;
	private int aimidx;
	private String masterid;
	private int mans;
	private int nowmans;
	private String status;
	private String members;
	private String inmembers;
	private int reqcount;
	public AdminPoolMasterStatusDTO() {
		super();
	}
	public AdminPoolMasterStatusDTO(int idx, int aimidx, String masterid, int mans, int nowmans, String status,
			String members, String inmembers, int reqcount) {
		super();
		this.idx = idx;
		this.aimidx = aimidx;
		this.masterid = masterid;
		this.mans = mans;
		this.nowmans = nowmans;
		this.status = status;
		this.members = members;
		this.inmembers = inmembers;
		this.reqcount = reqcount;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getAimidx() {
		return aimidx;
	}
	public void setAimidx(int aimidx) {
		this.aimidx = aimidx;
	}
	public String getMasterid() {
		return masterid;
	}
	public void setMasterid(String masterid) {
		this.masterid = masterid;
	}
	public int getMans() {
		return mans;
	}
	public void setMans(int mans) {
		this.mans = mans;
	}
	public int getNowmans() {
		return nowmans;
	}
	public void setNowmans(int nowmans) {
		this.nowmans = nowmans;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMembers() {
		return members;
	}
	public void setMembers(String members) {
		this.members = members;
	}
	public String getInmembers() {
		return inmembers;
	}
	public void setInmembers(String inmembers) {
		this.inmembers = inmembers;
	}
	public int getReqcount() {
		return reqcount;
	}
	public void setReqcount(int reqcount) {
		this.reqcount = reqcount;
	}
	
}
