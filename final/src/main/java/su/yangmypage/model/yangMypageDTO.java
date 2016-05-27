package su.yangmypage.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class yangMypageDTO {
	
	private int idx;
	private String userid;
	private String cardtype1;
	private String cardnum;
	private String cardterm;
	private String cardname;
	private String cvv;
	private String cardtype2;
	private String cardid;
	public yangMypageDTO() {
		super();
	}
	public yangMypageDTO(int idx, String userid, String cardtype1, String cardnum, String cardterm, String cardname,
			String cvv, String cardtype2, String cardid) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.cardtype1 = cardtype1;
		this.cardnum = cardnum;
		this.cardterm = cardterm;
		this.cardname = cardname;
		this.cvv = cvv;
		this.cardtype2 = cardtype2;
		this.cardid = cardid;
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
	public String getCardterm() {
		return cardterm;
	}
	public void setCardterm(String cardterm) {
		this.cardterm = cardterm;
	}
	public String getCardname() {
		return cardname;
	}
	public void setCardname(String cardname) {
		this.cardname = cardname;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getCardtype2() {
		return cardtype2;
	}
	public void setCardtype2(String cardtype2) {
		this.cardtype2 = cardtype2;
	}
	public String getCardid() {
		return cardid;
	}
	public void setCardid(String cardid) {
		this.cardid = cardid;
	}
	
	
}
