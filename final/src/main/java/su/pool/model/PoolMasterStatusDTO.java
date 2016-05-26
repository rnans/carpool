package su.pool.model;

public class PoolMasterStatusDTO 
{
	private int idx;
	private int aimidx;
	private String masterid;
	private int mans;
	private int nowmans;
	private String status;
	private String members;
	private String inmembers;
	private int reqcount;
	
	public PoolMasterStatusDTO() {
		super();
	}
	
	
	
	public PoolMasterStatusDTO(int idx, String members) {
		super();
		this.idx = idx;
		this.members = members;
	}

	


	public PoolMasterStatusDTO(String masterid, int aimidx, int mans) {
		super();
		this.aimidx = aimidx;
		this.masterid = masterid;
		this.mans = mans;
	}



	public PoolMasterStatusDTO(int aimidx, int nowmans, String members) {
		super();
		this.aimidx = aimidx;
		this.nowmans = nowmans;
		this.members = members;
	}


	public PoolMasterStatusDTO(int aimidx, String masterid, int mans, int nowmans, String status,
			String members) {
		super();
		this.aimidx = aimidx;
		this.masterid = masterid;
		this.mans = mans;
		this.nowmans = nowmans;
		this.status = status;
		this.members = members;
	}



	public PoolMasterStatusDTO(int aimidx, String masterid, int mans, int nowmans, String status, String members,
			String inmembers) {
		super();
		this.aimidx = aimidx;
		this.masterid = masterid;
		this.mans = mans;
		this.nowmans = nowmans;
		this.status = status;
		this.members = members;
		this.inmembers = inmembers;
	}



	public PoolMasterStatusDTO(int idx, int aimidx, String masterid, int mans, int nowmans, String status,
			String members, String inmembers) {
		super();
		this.idx = idx;
		this.aimidx = aimidx;
		this.masterid = masterid;
		this.mans = mans;
		this.nowmans = nowmans;
		this.status = status;
		this.members = members;
		this.inmembers = inmembers;
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
