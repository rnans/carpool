package su.noti.model;

public class NotiDTO {

	private int idx;
	private String userid;
	private String notitype;
	private String poolname;
	private int count;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public NotiDTO(int idx, String userid, String notitype, String poolname, int count) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.notitype = notitype;
		this.poolname = poolname;
		this.count = count;
	}

	public NotiDTO() {
		super();
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

	public String getNotitype() {
		return notitype;
	}

	public void setNotitype(String notitype) {
		this.notitype = notitype;
	}

	public String getPoolname() {
		return poolname;
	}

	public void setPoolname(String poolname) {
		this.poolname = poolname;
	}
	
	
}
