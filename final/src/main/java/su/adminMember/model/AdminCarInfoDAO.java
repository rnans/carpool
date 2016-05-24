package su.adminMember.model;

import java.util.List;

public interface AdminCarInfoDAO {

	List<AdminCarInfoDTO> memberCarInfo(int cp, int ls);
	int carInfoTotalCnt();
}
