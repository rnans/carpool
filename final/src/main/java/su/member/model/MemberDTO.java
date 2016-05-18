package su.member.model;

import java.sql.*;

public class MemberDTO {

	private int idx;
	private String id;
	private String pwd;
	private String name;
	private String birth;
	private String phonenum;
	private String addr;
	private String fullemail;
	private String email;
	private String email2;
	private String sex;
	private String grade;
	private String carhave;
	private Date joindate;
	
	public MemberDTO() {
		super();
	}

	

	public MemberDTO(int idx, String id, String pwd, String name, String birth, String phonenum, String addr,
			String fullemail, String email, String email2, String sex, String grade, String carhave, Date joindate) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.phonenum = phonenum;
		this.addr = addr;
		this.fullemail = fullemail;
		this.email = email;
		this.email2 = email2;
		this.sex = sex;
		this.grade = grade;
		this.carhave = carhave;
		this.joindate = joindate;
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCarhave() {
		return carhave;
	}

	public void setCarhave(String carhave) {
		this.carhave = carhave;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public String getFullemail() {
		return fullemail;
	}

	public void setFullemail(String email, String email2) {
		this.fullemail = email+"@"+email2;
	}
	
	
	
	
}
