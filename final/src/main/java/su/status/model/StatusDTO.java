package su.status.model;

public class StatusDTO {
	private int idx;
	private String userid;
	
	public StatusDTO() {
		super();
	}

	public StatusDTO(int idx, String userid) {
		super();
		this.idx = idx;
		this.userid = userid;
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

}
