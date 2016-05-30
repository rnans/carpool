package su.yangmypage.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.member.model.MemberDTO;

public class yangMypageDAOImple implements yangMypageDAO {

	private SqlSessionTemplate sqlMap;
	
	public yangMypageDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<yangMypageDTO> allPayInfo(String userid) {
		
		List<yangMypageDTO> list=sqlMap.selectList("allPayInfo", userid);
		
		return list;
	}
	public int userPayAdd(yangMypageDTO dto) {
	
		int count=sqlMap.insert("userPayAdd",dto);
		return count;
	}
	public yangMypageDTO idxPayInfo(int idx) {
		
		yangMypageDTO lists=(yangMypageDTO) sqlMap.selectOne("cardIdxList", idx);
		return lists;
	}

	public int userPayUpdate(yangMypageDTO dto) {
		int count=sqlMap.update("cardUpdate", dto);
		
		return count;
	}
	public int userPayDel(yangMypageDTO dto) {
		
		int count=sqlMap.delete("cardDel", dto);
		return count;
	}
	public List<yangMypageDTO> allCardInfo() {

		List<yangMypageDTO> list=sqlMap.selectList("cardNum");
		return list;
	}
}
