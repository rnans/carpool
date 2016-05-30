package su.mypage.model;


import java.util.List;

import su.member.model.MemberDTO;
import su.mypage.model.MyAlarmDTO;

public interface MypageDAO {

	public MemberDTO getAllUserInfo(String sid);
	public int myProfileUpdate(MypageDTO dto);
	
	
	public int pwdUpdate(MypageDTO dto);
	
	/**알람관련 기능*/
	public MyAlarmDTO notiInfo(String id);
	public int notiSetting(MyAlarmDTO dto);
	public int alarmUpdate(MyAlarmDTO dto);
	
	
	

	
}
