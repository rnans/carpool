package su.adminPool.model;

import java.util.List;

public interface AdminUserPoolDAO {

	public List<AdminUserPoolDTO> userPoolList(int cp, int ls);
	public int userPoolTotalCnt();
	public int userPoolDel(int idx);
	
	public List<AdminUserPoolDTO> driverPoolList(int cp, int ls);
	public int driverPoolTotalCnt();
}
