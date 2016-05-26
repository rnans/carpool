package su.adminReserve.model;

public class AdminPoolMemberStatusDTO {


	private int idx;
	private String memberid;
	private int ownidx;
	private int aimidx;
	private String status;
	private int mans;
	public AdminPoolMemberStatusDTO() {
		super();
	}
	public AdminPoolMemberStatusDTO(int idx, String memberid, int ownidx, int aimidx, String status, int mans) {
		super();
		this.idx = idx;
		this.memberid = memberid;
		this.ownidx = ownidx;
		this.aimidx = aimidx;
		this.status = status;
		this.mans = mans;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public int getOwnidx() {
		return ownidx;
	}
	public void setOwnidx(int ownidx) {
		this.ownidx = ownidx;
	}
	public int getAimidx() {
		return aimidx;
	}
	public void setAimidx(int aimidx) {
		this.aimidx = aimidx;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getMans() {
		return mans;
	}
	public void setMans(int mans) {
		this.mans = mans;
	}
	
}
