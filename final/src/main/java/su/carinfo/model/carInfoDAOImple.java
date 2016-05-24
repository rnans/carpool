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
	
	public int carAdd(carInfoDTO dto) {
		
		int result=sqlMap.insert("carAdd", dto);
		
		return result;
	}
	
	public List<carInfoDTO> carList(String userid) {
		
		 List<carInfoDTO> dto=sqlMap.selectList("carList", userid);
		 
		return dto;
	}

}
