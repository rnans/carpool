package su.paylist.model;

public class PayListDTO {
	private int idx;
	private String userid;
	private String status;
	private String pooltype;
	private String termtype;
	private String poolname;
	private int pay;
	private String userid1;
	private String cardtype1;
	private String cardnum;
	public PayListDTO() {
		super();
	}
	public PayListDTO(int idx, String userid, String status, String pooltype, String termtype, String poolname, int pay,
			String userid1, String cardtype1, String cardnum) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.status = status;
		this.pooltype = pooltype;
		this.termtype = termtype;
		this.poolname = poolname;
		this.pay = pay;
		this.userid1 = userid1;
		this.cardtype1 = cardtype1;
		this.cardnum = cardnum;
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
	public String getUserid1() {
		return userid1;
	}
	public void setUserid1(String userid1) {
		this.userid1 = userid1;
	}
	public String getCardtype1() {
		return cardtype1;
	}
	public void setCardtype1(String cardtype1) {
		this.cardtype1 = cardtype1;
	}
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}

}
