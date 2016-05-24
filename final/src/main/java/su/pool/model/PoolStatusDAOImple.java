package su.pool.model;

import java.util.List;

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
	
	public int addToMember(PoolMasterStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.insert("addToMember", dto);
	}
	
	public List viewOwnMemberPoolList(String id) {
		// TODO Auto-generated method stub
		return sqlMap.selectList("viewOwnMemberPool", id);
	}
}
