package su.carBookInfo.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class CarBookInfoDAOImple implements CarBookInfoDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public CarBookInfoDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int carAdd(CarBookInfoDTO dto) {
		
		int count=sqlMap.insert("CarBookInfo", dto);
		return count;
	
	}
	public List<CarBookInfoDTO> idcarnum(String id){
		List<CarBookInfoDTO> list=sqlMap.selectList("idCarnum", id);
				return list;
	}

}
