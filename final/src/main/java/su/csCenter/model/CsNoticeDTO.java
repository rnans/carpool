package su.csCenter.model;


public class CsNoticeDTO {

	private int idx;
	private String writer;
	private String writedate;
	private String subject;
	private String content;
	private int readnum;
	public CsNoticeDTO() {
		super();
	}
	public CsNoticeDTO(int idx, String writer, String writedate, String subject, String content, int readnum) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.writedate = writedate;
		this.subject = subject;
		this.content = content;
		this.readnum = readnum;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
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
	public int getReadnum() {
		return readnum;
	}
	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}
	

	
}
