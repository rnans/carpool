package su.carCost.model;

import org.mybatis.spring.SqlSessionTemplate;

public class CarCostDAOImple implements CarCostDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public CarCostDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int costAdd(CarCostDTO dto) {
		
		int count=sqlMap.insert("CarCost", dto);
		return count;
	}

}
