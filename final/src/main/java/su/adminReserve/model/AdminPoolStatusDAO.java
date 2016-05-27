package su.adminReserve.model;

import java.util.List;

public interface AdminPoolStatusDAO {

	//드라이버 예약 정보
	public List<AdminPoolMasterStatusDTO> adminPoolDriverList(int cp, int ls);
	public int adminPoolDriverTotalCnt();
	public int adminDriverReserveDel(int idx);
   //멤버 에약 정보
	public List<AdminPoolMemberStatusDTO> adminPoolMemberList(int cp,int ls);
	public int adminPoolMemberTotlCnt();
	public int adminMemberReserveDel(int idx);
}
