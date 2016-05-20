package su.comm.model;

public class commBBSDTO {


	private int idx;
	private String commid;
	private String id;
	private String content;
	private String writedate;
	
	public commBBSDTO() {
		super();
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getCommid() {
		return commid;
	}

	public void setCommid(String commid) {
		this.commid = commid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public commBBSDTO(int idx, String commid, String id, String content, String writedate) {
		super();
		this.idx = idx;
		this.commid = commid;
		this.id = id;
		this.content = content;
		this.writedate = writedate;
	}
	
	
}
