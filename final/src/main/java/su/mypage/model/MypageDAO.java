package su.mypage.model;

import su.member.model.MemberDTO;

public interface MypageDAO {

	public MemberDTO getAllUserInfo(String sid);
	public int myProfileUpdate(MypageDTO dto);
	
	
	public int pwdUpdate(MypageDTO dto);
	
	
	
}
