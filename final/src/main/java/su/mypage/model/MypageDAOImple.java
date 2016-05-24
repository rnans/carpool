package su.mypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.member.model.MemberDTO;

public class MypageDAOImple implements MypageDAO {

	private SqlSessionTemplate sqlMap;
	
	public MypageDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public MemberDTO getAllUserInfo(String sid) {
		List list=sqlMap.selectList("UserInfo", sid);

		if(list==null)
		{
			return null;
		}
		
		MemberDTO dto=(MemberDTO)list.get(0);
		
		return dto;
	}



	public int myProfileUpdate(MypageDTO dto) {
		int count=sqlMap.update("ProfileUpdate",dto);
		return count;
	}

	public int userPwdUpdate(String userpwd) {
		
		int count=sqlMap.update("userPwdUpdate", userpwd);
		return count;
	}






	
	
	

	

}
