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
	public List<AdminMemberDTO> memberinfo() {
		
		List<AdminMemberDTO> list = sqlMap.selectList("sql.adminMember.memberInfo");
		return list;
	}
	
	/**삭제 할때 쓰는 거*/
	public AdminMemberDTO memberList(int idx) {
		
		AdminMemberDTO dto = sqlMap.selectOne("memberList", idx);
		return dto;
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
