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
	private String cvc;
	private String cardtype2;
	private String cardid;
	private String cardnum1;
	private String cardnum2;
	private String cardnum3;
	private String cardnum4;
	private String cardterm1;
	private String cardterm2;
	private String cardimg;
	public yangMypageDTO() {
		super();
	}
	public yangMypageDTO(int idx, String userid, String cardtype1, String cardnum, String cardterm, String cardname,
			String cvc, String cardtype2, String cardid, String cardnum1, String cardnum2, String cardnum3,
			String cardnum4, String cardterm1, String cardterm2, String cardimg) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.cardtype1 = cardtype1;
		this.cardnum = cardnum;
		this.cardterm = cardterm;
		this.cardname = cardname;
		this.cvc = cvc;
		this.cardtype2 = cardtype2;
		this.cardid = cardid;
		this.cardnum1 = cardnum1;
		this.cardnum2 = cardnum2;
		this.cardnum3 = cardnum3;
		this.cardnum4 = cardnum4;
		this.cardterm1 = cardterm1;
		this.cardterm2 = cardterm2;
		this.cardimg = cardimg;
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
	public String getCvc() {
		return cvc;
	}
	public void setCvc(String cvc) {
		this.cvc = cvc;
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
	public String getCardnum1() {
		return cardnum1;
	}
	public void setCardnum1(String cardnum1) {
		this.cardnum1 = cardnum1;
	}
	public String getCardnum2() {
		return cardnum2;
	}
	public void setCardnum2(String cardnum2) {
		this.cardnum2 = cardnum2;
	}
	public String getCardnum3() {
		return cardnum3;
	}
	public void setCardnum3(String cardnum3) {
		this.cardnum3 = cardnum3;
	}
	public String getCardnum4() {
		return cardnum4;
	}
	public void setCardnum4(String cardnum4) {
		this.cardnum4 = cardnum4;
	}
	public String getCardterm1() {
		return cardterm1;
	}
	public void setCardterm1(String cardterm1) {
		this.cardterm1 = cardterm1;
	}
	public String getCardterm2() {
		return cardterm2;
	}
	public void setCardterm2(String cardterm2) {
		this.cardterm2 = cardterm2;
	}
	public String getCardimg() {
		return cardimg;
	}
	public void setCardimg(String cardimg) {
		this.cardimg = cardimg;
	}
	
}
