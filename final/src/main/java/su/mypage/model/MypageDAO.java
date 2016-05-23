package su.mypage.model;

import su.member.model.MemberDTO;

public interface MypageDAO {

	public MemberDTO getAllUserInfo(String userid);
}
