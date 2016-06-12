package su.adminPool.model;

import java.util.List;

public interface AdminUserPoolDAO {

	public List<AdminUserPoolDTO> userPoolList(int cp, int ls);
	public int userPoolTotalCnt();
	public int userPoolDel(int idx);
	
	public List<AdminUserPoolDTO> driverPoolList(int cp, int ls);
	public int driverPoolTotalCnt();
	public String newPoolDate(int idx);
	public String newPoolName(int idx);
	public String newPoolType(int idx);
	public String newPoolDate2(int idx);
	public String newPoolName2(int idx);
	public String newPoolType2(int idx);
	public int newPoolIdx();
	public int new2PoolIdx();
	public int poolCount();
	
}
