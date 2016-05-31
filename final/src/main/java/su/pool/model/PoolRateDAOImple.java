package su.pool.model;

import org.mybatis.spring.SqlSessionTemplate;

public class PoolRateDAOImple implements PoolRateDAO
{

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public PoolRateDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
}
