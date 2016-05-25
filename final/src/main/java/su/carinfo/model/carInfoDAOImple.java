package su.carinfo.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;


public class carInfoDAOImple implements carInfoDAO {

	private SqlSessionTemplate sqlMap;

	// 생성자 방식
	public carInfoDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	//차량등록
	public int carAdd(carInfoDTO dto) {
		
		int result=sqlMap.insert("carAdd", dto);
		
		return result;
	}
	//등록한 모든차량
	public List<carInfoDTO> carAllList(String userid) {
		
		 List<carInfoDTO> dto=sqlMap.selectList("carList", userid);
		 
		return dto;
	}
	//차량수정(idx가 같은 데이터)
	public List<carInfoDTO> carList(int idx) {
		
		List<carInfoDTO> dto=sqlMap.selectList("carIdxList", idx);
		 
		
		
		return dto;
	}
	
}
