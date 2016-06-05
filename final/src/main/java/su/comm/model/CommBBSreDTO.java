package su.comm.model;

public class CommBBSreDTO {
	
	private int idx;
	private String commid;
	private int bbsidx;
	private String id;
	private String name;
	private String content;
	private String writedate;
	private String count;
	
	public CommBBSreDTO() {
		super();
	}
	
	
	
	public CommBBSreDTO(int idx, String commid, int bbsidx, String id, String name, String content, String writedate,
			String count) {
		super();
		this.idx = idx;
		this.commid = commid;
		this.bbsidx = bbsidx;
		this.id = id;
		this.name = name;
		this.content = content;
		this.writedate = writedate;
		this.count = count;
	}


	
	public String getCount() {
		return count;
	}


	public void setCount(String count) {
		this.count = count;
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

	public int getBbsidx() {
		return bbsidx;
	}

	public void setBbsidx(int bbsidx) {
		this.bbsidx = bbsidx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
