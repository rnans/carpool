package su.comm.model;

public class commBBSDTO {

	private int idx;
	private String poolname;
	private String id;
	private String name;
	private String content;
	private String writedate;
	private String varchar2;
	private int notice;
	
	public commBBSDTO() {
		super();
	}

	public commBBSDTO(int idx, String poolname, String id, String name, String content, String writedate,
			String varchar2, int notice) {
		super();
		this.idx = idx;
		this.poolname = poolname;
		this.id = id;
		this.name = name;
		this.content = content;
		this.writedate = writedate;
		this.varchar2 = varchar2;
		this.notice = notice;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getPoolname() {
		return poolname;
	}

	public void setPoolname(String poolname) {
		this.poolname = poolname;
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

	public String getVarchar2() {
		return varchar2;
	}

	public void setVarchar2(String varchar2) {
		this.varchar2 = varchar2;
	}

	public int getNotice() {
		return notice;
	}

	public void setNotice(int notice) {
		this.notice = notice;
	}
	
	
}
