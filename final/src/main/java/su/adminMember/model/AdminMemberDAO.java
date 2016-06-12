package su.adminMember.model;

import java.util.List;

import su.mypage.model.MyAlarmDTO;

public interface AdminMemberDAO {

	//회원관리
	public List<AdminMemberDTO> memberinfo(int cp, int ls);
	public int memberTotalCnt();
	
	public int memberDel(int idx);
	public int adminAdd(int idx, String grade);
	public int memberCount();
	//그래프 성별
	public int memberSexMan();
	public int memberSexWoman();
	
	//그래프 주소
	public int memberAddrSeoul();
	public int memberAddrGyeonggi();
	public int memberAddrInchean();
	public int memberAddrBusan();
	public int memberAddrEtc();
	//회원목록 검색창
	public int memberIdTotalCnt(String search);
	public int memberNameTotalCnt(String search);
	public int memberSexTotalCnt(String search);
	public List<AdminMemberDTO> memberIdSearch(int cp, int ls, String search);
	public List<AdminMemberDTO> memberNameSearch(int cp, int ls, String search);
	public List<AdminMemberDTO> memberSexSearch(int cp, int ls, String search);
	
	//회원알람관리
	public List<MyAlarmDTO> memberAlarm(int cp, int ls);
	public int alarmTotalCnt();
}
