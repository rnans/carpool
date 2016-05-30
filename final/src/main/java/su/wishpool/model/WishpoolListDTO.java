package su.wishpool.model;

public class WishpoolListDTO {

	private int idx;
	private String userid;
	private int aimidx;
	private String poolname;
	private String masterid;
	
	public WishpoolListDTO() {
		super();
	}

	public WishpoolListDTO(int idx, String userid, int aimidx, String poolname, String masterid) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.aimidx = aimidx;
		this.poolname = poolname;
		this.masterid = masterid;
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

	public int getAimidx() {
		return aimidx;
	}

	public void setAimidx(int aimidx) {
		this.aimidx = aimidx;
	}

	public String getPoolname() {
		return poolname;
	}

	public void setPoolname(String poolname) {
		this.poolname = poolname;
	}

	public String getMasterid() {
		return masterid;
	}

	public void setMasterid(String masterid) {
		this.masterid = masterid;
	}
	
	
	
	
}
