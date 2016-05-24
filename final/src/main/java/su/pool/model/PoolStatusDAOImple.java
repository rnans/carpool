package su.pool.model;

import org.mybatis.spring.SqlSessionTemplate;

public class PoolStatusDAOImple implements PoolStatusDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public PoolStatusDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public PoolStatusDAOImple() {
		// TODO Auto-generated constructor stub
	}
	
	public int reqToMember(PoolMasterStatusDTO dto) 
	{
		// TODO Auto-generated method stub
		return 0;
	}
}
