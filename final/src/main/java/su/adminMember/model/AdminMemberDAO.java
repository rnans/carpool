package su.adminMember.model;

import java.util.List;

import su.mypage.model.MyAlarmDTO;

public interface AdminMemberDAO {

	//회원관리
	public List<AdminMemberDTO> memberinfo(int cp, int ls);
	public int memberTotalCnt();
	
	public int memberDel(int idx);
	public int adminAdd(int idx, String grade);
	
	//회원알람관리
	public List<MyAlarmDTO> memberAlarm(int cp, int ls);
	public int alarmTotalCnt();
}
