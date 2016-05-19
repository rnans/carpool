package su.csCenter.model;

public class CsoneandoneDTO {

	private int idx;
	private String writer;
	private String type;
	private String writedate;
	private String subject;
	private String content;
	private String state;
	private String answer;
	public CsoneandoneDTO() {
		super();
	}
	public CsoneandoneDTO(int idx, String writer, String type, String writedate, String subject, String content,
			String state, String answer) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.type = type;
		this.writedate = writedate;
		this.subject = subject;
		this.content = content;
		this.state = state;
		this.answer = answer;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
