package su.yangmypage.model;

import java.util.List;

import su.member.model.MemberDTO;

public interface yangMypageDAO {

	public List<yangMypageDTO> allPayInfo(String userid);
	public int userPayAdd(yangMypageDTO dto);
	public int userPayUpdate(yangMypageDTO dto);
	public yangMypageDTO idxPayInfo(int idx);
	public int userPayDel(yangMypageDTO dto);
	public List<yangMypageDTO> allCardInfo();
	
}
