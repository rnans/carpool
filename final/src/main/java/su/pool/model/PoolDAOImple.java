package su.pool.model;

import org.mybatis.spring.SqlSessionTemplate;

public class PoolDAOImple implements PoolDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public PoolDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
}
