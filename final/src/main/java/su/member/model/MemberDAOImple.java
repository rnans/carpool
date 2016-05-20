package su.member.model;

import java.sql.*;
import java.util.HashMap;
import java.util.List;
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
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("pwd", pwd);
			
		List<MemberDTO> list=sqlMap.selectList("memberLogin", map);
		
		if(list.size()==0){
			return 3;
		}
		if(list.get(0).getId().equals(id)){
			String dbpwd = list.get(0).getPwd();
	         if(dbpwd.equals(pwd)){
	            return 1;
	         }else if(dbpwd==null || dbpwd.equals("")){
	            return 2;
	         }
	      }
			  return 3;	       
		
	}
	
	/**회원 이름 가져오는거*/
	public String getUserInfo(String id) {
		
		MemberDTO dto = sqlMap.selectOne("memberInfo", id);
		String result=dto.getName();
		return result;
	}

}
