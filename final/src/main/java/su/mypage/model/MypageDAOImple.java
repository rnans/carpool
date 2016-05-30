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

	
	
	

	public int pwdUpdate(MypageDTO dto) {

		
		int count=sqlMap.update("PwdUpdate", dto);
		return count;
	}

	public MypageDAOImple() {
		// TODO Auto-generated constructor stub
	}
	
	/**알람설정 정보보기*/
	public MyAlarmDTO notiInfo(String id) {
		
		List<MyAlarmDTO> lists = sqlMap.selectList("myAlarmInfo", id);
		
		if(lists.size()==0){
			return null;
		}
		
		MyAlarmDTO dto = lists.get(0);

		return dto;
	}
	
	/**알람설정*/
	public int notiSetting(MyAlarmDTO dto) {
		
		int count = sqlMap.insert("myAlarm", dto);
		return count;
	}
	
	public int alarmUpdate(MyAlarmDTO dto) {
		
		int count = sqlMap.update("alarmUpdate", dto);
		return count;
	}







	
	
	

	

}
