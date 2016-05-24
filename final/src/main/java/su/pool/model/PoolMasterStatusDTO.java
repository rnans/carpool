package su.pool.model;

public class PoolMasterStatusDTO 
{
	private int idx;
	private int addidx;
	private String masterid;
	private String mans;
	private String nowmans;
	private String status;
	private String members;
	private String inmembers;
	
	public PoolMasterStatusDTO() {
		super();
	}
	
	
	
	public PoolMasterStatusDTO(int idx, String members) {
		super();
		this.idx = idx;
		this.members = members;
	}



	public PoolMasterStatusDTO(int addidx, String masterid, String mans) {
		super();
		this.addidx = addidx;
		this.masterid = masterid;
		this.mans = mans;
	}



	public PoolMasterStatusDTO(int addidx, String masterid, String mans, String nowmans, String status,
			String members) {
		super();
		this.addidx = addidx;
		this.masterid = masterid;
		this.mans = mans;
		this.nowmans = nowmans;
		this.status = status;
		this.members = members;
	}



	public PoolMasterStatusDTO(int addidx, String masterid, String mans, String nowmans, String status, String members,
			String inmembers) {
		super();
		this.addidx = addidx;
		this.masterid = masterid;
		this.mans = mans;
		this.nowmans = nowmans;
		this.status = status;
		this.members = members;
		this.inmembers = inmembers;
	}



	public PoolMasterStatusDTO(int idx, int addidx, String masterid, String mans, String nowmans, String status,
			String members, String inmembers) {
		super();
		this.idx = idx;
		this.addidx = addidx;
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
	public int getAddidx() {
		return addidx;
	}
	public void setAddidx(int addidx) {
		this.addidx = addidx;
	}
	public String getMasterid() {
		return masterid;
	}
	public void setMasterid(String masterid) {
		this.masterid = masterid;
	}
	public String getMans() {
		return mans;
	}
	public void setMans(String mans) {
		this.mans = mans;
	}
	public String getNowmans() {
		return nowmans;
	}
	public void setNowmans(String nowmans) {
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
	
	
}
