package su.adminMember.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

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

}
