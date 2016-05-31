package su.pool.model;

import java.sql.*;

public class PoolRateDTO 
{
	private int idx;
	private String userid;
	private String aimid;
	private int rate;
	private Date writedate;
	private String content;
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAimid() {
		return aimid;
	}
	public void setAimid(String aimid) {
		this.aimid = aimid;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public PoolRateDTO(int idx, String userid, String aimid, int rate, Date writedate, String content) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.aimid = aimid;
		this.rate = rate;
		this.writedate = writedate;
		this.content = content;
	}
	public PoolRateDTO() {
		super();
	}
	
	
}
