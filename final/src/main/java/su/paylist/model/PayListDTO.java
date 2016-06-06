package su.paylist.model;

public class PayListDTO {
	private int idx;
	private String userid;
	private String status;
	private String pooltype;
	private String termtype;
	private String poolname;
	private int pay;
	
	public PayListDTO() {
		super();
	}

	public PayListDTO(int idx, String userid, String status, String pooltype, String termtype, String poolname,
			int pay) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.status = status;
		this.pooltype = pooltype;
		this.termtype = termtype;
		this.poolname = poolname;
		this.pay = pay;
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

	public String getTermtype() {
		return termtype;
	}

	public void setTermtype(String termtype) {
		this.termtype = termtype;
	}

	public String getPoolname() {
		return poolname;
	}

	public void setPoolname(String poolname) {
		this.poolname = poolname;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}
}
