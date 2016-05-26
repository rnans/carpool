package su.adminMember.model;

import java.util.List;

public interface AdminCarInfoDAO {

	public List<AdminCarInfoDTO> memberCarInfo(int cp, int ls);
	public int carInfoTotalCnt();
	
	public int memberCarDel(int idx);
	public int memberCarOk(int idx, String confirm);
	
}
