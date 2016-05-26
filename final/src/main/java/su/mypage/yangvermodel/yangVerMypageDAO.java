package su.mypage.yangvermodel;

import su.member.model.MemberDTO;

public interface yangVerMypageDAO {

	public MemberDTO getAllUserInfo(String sid);
	public int myProfileUpdate(yangVerMypageDTO dto);
	
	
	public int pwdUpdate(yangVerMypageDTO dto);
	
	
	
}
