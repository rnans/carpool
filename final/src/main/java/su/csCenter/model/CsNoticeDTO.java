package su.csCenter.model;

import java.util.Date;

public class CsNoticeDTO {

	private int idx;
	private String writer;
	private Date writedate;
	private String subject;
	private String content;
	private int readnum;
	public CsNoticeDTO() {
		super();
	}
	public CsNoticeDTO(int idx, String writer, Date writedate, String subject, String content, int readnum) {
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
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
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
