package su.yangmypage.model;

import java.util.List;

import su.member.model.MemberDTO;
import su.paylist.model.PayListDTO;
import su.pool.model.PoolDTO;
import su.pool.model.PoolRateDTO;

public interface yangMypageDAO {

	public List<yangMypageDTO> allPayInfo(String userid);
	public int userPayAdd(yangMypageDTO dto);
	public int userPayUpdate(yangMypageDTO dto);
	public yangMypageDTO idxPayInfo(int idx);
	public int userPayDel(yangMypageDTO dto);
	public List<yangMypageDTO> allCardInfo();
	public List<PoolDTO> reservationList(String userid);
	public List<PoolRateDTO> rateGetView(String userid);
	public List<PoolRateDTO> rateSetView(String userid);
	public List<PayListDTO> useList(String userid1);
	
	
	
}
