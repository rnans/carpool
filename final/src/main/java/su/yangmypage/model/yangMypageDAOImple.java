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
		
		System.out.println(dto.getCardnum());
		System.out.println(dto.getCvv());
		System.out.println(dto.getCardid());
		System.out.println(dto.getCardname());
		System.out.println(dto.getCardterm());
		System.out.println(dto.getCardtype1());
		System.out.println(dto.getCardtype2());
		
		int count=sqlMap.insert("userPayAdd",dto);
		return count;
	}
}
