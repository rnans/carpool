package su.adminMember.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import su.mypage.model.MyAlarmDTO;

public class AdminMemberDAOImple implements AdminMemberDAO {

	private SqlSessionTemplate sqlMap;
	
	public AdminMemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/**전체회원 목록보기*/
	public List<AdminMemberDTO> memberinfo(int cp, int ls) {
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminMemberDTO> list = sqlMap.selectList("sql.adminMember.memberInfo", map);
		return list;
	}
	
	/**페이징*/
	public int memberTotalCnt() {
		
		int count = sqlMap.selectOne("sql.adminMember.memberTotalCnt");
		return count;
	}
	
	/**회원탈퇴*/
	public int memberDel(int idx) {
		
		int count = sqlMap.delete("memberDel", idx);
		return count;
	}
	
	/**관리자 권한 부여*/
	public int adminAdd(int idx, String grade) {
		Map map = new HashMap();
		map.put("idx", idx);
		map.put("grade", grade);
		
		int count = sqlMap.update("adminAdd", map);
		return count;
	}
	
	/**검색창 기능*/
	public int memberIdTotalCnt(String search) {
		int count = sqlMap.selectOne("memberIdTotalCnt", search);
		return count;
	}
	
	public int memberNameTotalCnt(String search) {
		int count = sqlMap.selectOne("memberNameTotalCnt", search);
		return count;
	}
	
	public int memberSexTotalCnt(String search) {
		int count = sqlMap.selectOne("memberSexTotalCnt", search);
		return count;
	}
	
	public List<AdminMemberDTO> memberIdSearch(int cp, int ls, String search) {
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map = new HashMap();
		map.put("search", search);
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminMemberDTO> list = sqlMap.selectList("memberIdSearch", map);
				return list;
	}
	
	public List<AdminMemberDTO> memberNameSearch(int cp, int ls, String search) {
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map = new HashMap();
		map.put("search", search);
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminMemberDTO> list = sqlMap.selectList("memberNameSearch", map);
		return list;
	}
	
	public List<AdminMemberDTO> memberSexSearch(int cp, int ls, String search) {
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map = new HashMap();
		map.put("search", search);
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminMemberDTO> list = sqlMap.selectList("memberSexSearch", map);
		return list;
	}
	
	/////////////////////////////////////////그래프 관련///////////////////////////////////////////////
	public int memberSexMan() {
		int count = sqlMap.selectOne("memberSexMan");
		return count;
	}
	
	public int memberSexWoman() {
		int count = sqlMap.selectOne("memberSexWoman");
		return count;
	}
	
	public int memberAddrSeoul() {
		int count = sqlMap.selectOne("memberAddrSeoul");
		return count;
	}
	
	public int memberAddrGyeonggi() {
		int count = sqlMap.selectOne("memberAddrGyeonggi");
		return count;
	}
	
	public int memberAddrInchean() {
		int count = sqlMap.selectOne("memberAddrInchean");
		return count;
	}
	
	public int memberAddrBusan() {
		int count = sqlMap.selectOne("memberAddrBusan");
		return count;
	}
	
	public int memberAddrEtc() {
		int count = sqlMap.selectOne("memberAddrEtc");
		return count;
	}
	/////////////////////////////////////////그래프 관련///////////////////////////////////////////////
	
	///////////////////////////////////////////////////회원 알림 관리 //////////////////////////////////////////
	public List<MyAlarmDTO> memberAlarm(int cp, int ls) {
		
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<MyAlarmDTO> list = sqlMap.selectList("memberAlarm", map);
				
		return list;
	}
	
	public int alarmTotalCnt() {
		int count = sqlMap.selectOne("alarmTotalCnt");
		return count;
	}

}
