package su.message.model;

public class MessageDTO {

	
	private int idx;
	private String sendid;
	private String receiveid;
	private String content;
	private String senddate;
	private String reading;
	public MessageDTO() {
		super();
	}
	public MessageDTO(int idx, String sendid, String receiveid, String content, String senddate, String reading) {
		super();
		this.idx = idx;
		this.sendid = sendid;
		this.receiveid = receiveid;
		this.content = content;
		this.senddate = senddate;
		this.reading = reading;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSendid() {
		return sendid;
	}
	public void setSendid(String sendid) {
		this.sendid = sendid;
	}
	public String getReceiveid() {
		return receiveid;
	}
	public void setReceiveid(String receiveid) {
		this.receiveid = receiveid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSenddate() {
		return senddate;
	}
	public void setSenddate(String senddate) {
		this.senddate = senddate;
	}
	public String getReading() {
		return reading;
	}
	public void setReading(String reading) {
		this.reading = reading;
	}
	
	
}
