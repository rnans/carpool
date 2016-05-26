package su.mypage.yangvermodel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.member.model.MemberDTO;

public class yangVerMypageDAOImple implements yangVerMypageDAO {

	private SqlSessionTemplate sqlMap;
	
	public yangVerMypageDAOImple(SqlSessionTemplate sqlMap) {
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



	public int myProfileUpdate(yangVerMypageDTO dto) {
		int count=sqlMap.update("ProfileUpdate",dto);
		return count;
	}

	
	
	

	public int pwdUpdate(yangVerMypageDTO dto) {

		
		int count=sqlMap.update("PwdUpdate", dto);
		return count;
	}










	
	
	

	

}
