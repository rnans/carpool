package su.adminMember.model;

import java.util.List;

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
	
	/**회원탈퇴*/
	public int MemberDel(int idx) {
		
		int count = sqlMap.delete("memberDel", idx);
		return count;
	}

}
