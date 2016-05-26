package su.comm.model;

public class scheDTO {
	
	private int idx;
	private String id;
	private String commid;
	private String subject;
	private String content;
	private String startday;
	private String stime;
	private String endday;
	private String etime;
	private String banbok;
	private String writedate;
	public scheDTO() {
		super();
	}
	public scheDTO(int idx, String id, String commid, String subject, String content, String startday, String stime,
			String endday, String etime, String banbok, String writedate) {
		super();
		this.idx = idx;
		this.id = id;
		this.commid = commid;
		this.subject = subject;
		this.content = content;
		this.startday = startday;
		this.stime = stime;
		this.endday = endday;
		this.etime = etime;
		this.banbok = banbok;
		this.writedate = writedate;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCommid() {
		return commid;
	}
	public void setCommid(String commid) {
		this.commid = commid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartday() {
		return startday;
	}
	public void setStartday(String startday) {
		this.startday = startday;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getEndday() {
		return endday;
	}
	public void setEndday(String endday) {
		this.endday = endday;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	public String getBanbok() {
		return banbok;
	}
	public void setBanbok(String banbok) {
		this.banbok = banbok;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	
	
	
}