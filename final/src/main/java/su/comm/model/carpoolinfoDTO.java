package su.comm.model;

public class carpoolinfoDTO {
	
	private int idx;
	private String id;
	private String termtype;
	private String caridx;
	private String name;
	private String phonenum;
	private String email;
	private String sex;
	private int birth;
	private int grade;
	
	
	public carpoolinfoDTO() {
		super();
	}
	
	public carpoolinfoDTO(int idx, String id, String termtype, String caridx, String name, String phonenum,
			String email, String sex, int birth, int grade) {
		super();
		this.idx = idx;
		this.id = id;
		this.termtype = termtype;
		this.caridx = caridx;
		this.name = name;
		this.phonenum = phonenum;
		this.email = email;
		this.sex = sex;
		this.birth = birth;
		this.grade = grade;
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
	public String getTermtype() {
		return termtype;
	}
	public void setTermtype(String termtype) {
		this.termtype = termtype;
	}
	public String getCaridx() {
		return caridx;
	}
	public void setCaridx(String caridx) {
		this.caridx = caridx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
