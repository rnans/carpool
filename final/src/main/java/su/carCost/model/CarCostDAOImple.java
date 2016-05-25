package su.carCost.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;




public class CarCostDAOImple implements CarCostDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public CarCostDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	//비용등록
	public int costAdd(CarCostDTO dto) {
		
		int count=sqlMap.insert("CarCost", dto);
		return count;
	}
	
	//비용등록값 보여주기
	public List<CarCostDTO> CostList() {
		List<CarCostDTO> list = sqlMap.selectList("sql.carCost.CostList");
		return list;
	}
	
	//비용삭제
	public int costDel(int idx) {
		
		int count = sqlMap.delete("CostDel", idx);
		return count;
	}
	
	//비용수정 값 가져오기
//	public CarCostDTO costUpdate1(String idx) {
//		List list=sqlMap.selectList("UserInfo", idx);
//
//		if(list==null)
//		{
//			return null;
//		}
//		
//		MemberDTO dto=(MemberDTO)list.get(0);
//		
//		return dto;
//	}
	
	//비용수정
	public int costUpdate1(CarCostDTO dto) {
		int count=sqlMap.update("ProfileUpdate",dto);
		return count;
	}

}
