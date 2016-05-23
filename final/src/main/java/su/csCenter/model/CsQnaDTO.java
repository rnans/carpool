package su.csCenter.model;

public class CsQnaDTO {

	private int idx;
	private String subject;
	private String content;
	private String writedate;
	public CsQnaDTO() {
		super();
	}
	public CsQnaDTO(int idx, String subject, String content, String writedate) {
		super();
		this.idx = idx;
		this.subject = subject;
		this.content = content;
		this.writedate = writedate;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
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
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
	
}
