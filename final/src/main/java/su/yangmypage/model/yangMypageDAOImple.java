package su.yangmypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.member.model.MemberDTO;
import su.paylist.model.PayListDTO;
import su.pool.model.PoolDTO;
import su.pool.model.PoolRateDTO;
import su.wishpool.model.WishpoolListDTO;

public class yangMypageDAOImple implements yangMypageDAO {

	private SqlSessionTemplate sqlMap;
	
	public yangMypageDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	//카드정보
	public List<yangMypageDTO> allPayInfo(String userid) {
		
		List<yangMypageDTO> list=sqlMap.selectList("allPayInfo", userid);
		
		return list;
	}
	//카드정보 등록
	public int userPayAdd(yangMypageDTO dto) {
	
		int count=sqlMap.insert("userPayAdd",dto);
		return count;
	}
	//idx로 검색한 카드정보
	public yangMypageDTO idxPayInfo(int idx) {
		
		yangMypageDTO lists=(yangMypageDTO)sqlMap.selectOne("cardIdxList", idx);
		return lists;
	}
	//카드정보 수정
	public int userPayUpdate(yangMypageDTO dto) {
		int count=sqlMap.update("cardUpdate", dto);
		
		return count;
	}
	//카드정보 삭제
	public int userPayDel(yangMypageDTO dto) {
		
		int count=sqlMap.delete("cardDel", dto);
		return count;
	}
	//카드정보 중복(유효성)검사
	public List<yangMypageDTO> allCardInfo() {

		List<yangMypageDTO> list=sqlMap.selectList("cardNum");
		return list;
	}
	//등록글
	public List<PoolDTO> reservationList(String userid) {
		
		List<PoolDTO> list=sqlMap.selectList("reservationList", userid);
		return list;
	}
	//내가 평가한 글
	public List<PoolRateDTO> rateGetView(String userid) {
		
		List<PoolRateDTO> list=sqlMap.selectList("rateGetView", userid);
		return list;
	}
	//평가 받은 글
	public List<PoolRateDTO> rateSetView(String userid) {
		
		List<PoolRateDTO> list=sqlMap.selectList("rateSetView", userid);
		return list;
	}
	//이용내역
	public List<PayListDTO> useList(String userid1) {
		
		List<PayListDTO> list=sqlMap.selectList("useList", userid1);
		return list;
	}
	//즐겨찾기
	public List<WishpoolListDTO> listWish(String id) {
		
		List<WishpoolListDTO> list=sqlMap.selectList("listWish", id);
		return list;
	}
	//즐겨찾기 삭제
	public int wishDel(String idx) {
		
		int count=sqlMap.delete("wishDel", idx);
		return count;
	}
	//평가한 글의 정보
	public PoolRateDTO rateIdx(PoolRateDTO dto) {
		
		PoolRateDTO list=(PoolRateDTO)sqlMap.selectOne("rateIdx", dto);
		return list;
	}
	//평가한 글 수정
	public int rateUpdate(PoolRateDTO dto) {

			// TODO Auto-generated method stub
		int count=sqlMap.update("editRateByIdx",dto);
		return count;
		}
}
