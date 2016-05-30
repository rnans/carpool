package su.mypage.model;

public class MyAlarmDTO {

	private int idx;
	private String userid;
	private String chat;
	private String reservation;
	private String recommand;
	private String rate;
	private String community;
	
	public MyAlarmDTO() {
		super();
	}

	public MyAlarmDTO(int idx, String userid, String chat, String reservation, String recommand, String rate,
			String community) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.chat = chat;
		this.reservation = reservation;
		this.recommand = recommand;
		this.rate = rate;
		this.community = community;
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

	public String getChat() {
		return chat;
	}

	public void setChat(String chat) {
		this.chat = chat;
	}

	public String getReservation() {
		return reservation;
	}

	public void setReservation(String reservation) {
		this.reservation = reservation;
	}

	public String getRecommand() {
		return recommand;
	}

	public void setRecommand(String recommand) {
		this.recommand = recommand;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public String getCommunity() {
		return community;
	}

	public void setCommunity(String community) {
		this.community = community;
	}
	
	
	
	
}
