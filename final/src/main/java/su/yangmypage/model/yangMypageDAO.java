package su.yangmypage.model;

import java.util.List;

import su.member.model.MemberDTO;

public interface yangMypageDAO {

	public List<yangMypageDTO> allPayInfo(String userid);
	public int userPayAdd(yangMypageDTO dto);
	
	
}
