package su.pay.model;

public class PayDTO {

	private int idx;
	private String userid;
	private String cardType1;
	private String cardNum;
	private String cardTerm;
	private String cardName;
	private String cvc;
	private String cardType2;
	private int cardId;
	private String cardImg;
	private String paydate;
	public PayDTO() {
		super();
	}
	public PayDTO(int idx, String userid, String cardType1, String cardNum, String cardTerm, String cardName,
			String cvc, String cardType2, int cardId, String cardImg, String paydate) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.cardType1 = cardType1;
		this.cardNum = cardNum;
		this.cardTerm = cardTerm;
		this.cardName = cardName;
		this.cvc = cvc;
		this.cardType2 = cardType2;
		this.cardId = cardId;
		this.cardImg = cardImg;
		this.paydate = paydate;
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
	public String getCardType1() {
		return cardType1;
	}
	public void setCardType1(String cardType1) {
		this.cardType1 = cardType1;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getCardTerm() {
		return cardTerm;
	}
	public void setCardTerm(String cardTerm) {
		this.cardTerm = cardTerm;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCvc() {
		return cvc;
	}
	public void setCvc(String cvc) {
		this.cvc = cvc;
	}
	public String getCardType2() {
		return cardType2;
	}
	public void setCardType2(String cardType2) {
		this.cardType2 = cardType2;
	}
	public int getCardId() {
		return cardId;
	}
	public void setCardId(int cardId) {
		this.cardId = cardId;
	}
	public String getCardImg() {
		return cardImg;
	}
	public void setCardImg(String cardImg) {
		this.cardImg = cardImg;
	}
	public String getPaydate() {
		return paydate;
	}
	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}
	
	
	
}
