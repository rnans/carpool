package su.member.model;

import java.sql.*;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	private SqlSessionTemplate sqlMap;

	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	/**회원가입*/
	public int memberJoin(MemberDTO dto) {
		
		dto.setFullemail(dto.getEmail(), dto.getEmail2());
		int count = sqlMap.insert("memberJoin", dto);
		return count;
	}

}
