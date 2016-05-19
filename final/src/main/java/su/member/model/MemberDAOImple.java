package su.member.model;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {

	
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
	
	/**아이디 중복체크*/
	public boolean idCheck(String id) {

		String userid = sqlMap.selectOne("idCheck", id);
		
		if(userid==null||userid.equals("")){
			return false;
		}
		else if(userid.equals(id)){
			return true;
		}else{
			return false;
		}
		
		
	}
	
	/**로그인*/
	public int login(String id, String pwd) {
		String userid = id;
		String userpwd = pwd;
		Map map = new HashMap();
		map.put("id", userid);
		map.put("pwd", userpwd);
		MemberDTO dto=sqlMap.selectOne("memberLogin",map);
		
		if(dto.getPwd().equals("")||dto.getPwd()==null)
		{
			return 2;
		}
		else if(dto.getPwd().equals(pwd))
		{
			return 1;
		}
		else
		{
			return 3;
		}
		
	}
	
	/**회원 이름 가져오는거*/
	public String getUserInfo(String id) {
		
		MemberDTO dto = sqlMap.selectOne("memberInfo", id);
		String result=dto.getName();
		return result;
	}

}
