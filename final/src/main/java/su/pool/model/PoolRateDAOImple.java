package su.pool.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class PoolRateDAOImple implements PoolRateDAO
{

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public PoolRateDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public PoolRateDAOImple() {
		// TODO Auto-generated constructor stub
	}
	
	public int rateWrite(PoolRateDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.insert("poolRateWrite",dto);
	}
	
	public List getListByUserid(String id) {
		// TODO Auto-generated method stub
		return sqlMap.selectList("getListByUserid",id);
	}
	
	public List getListByAimid(String aimid) {
		// TODO Auto-generated method stub
		return sqlMap.selectList("getListByAimid",aimid);
	}
	
	public int rateDel(int idx)
	{
		return sqlMap.delete("delRateByIdx",idx);
	}
	
	public int rateEdit(PoolRateDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.update("editRateByIdx",dto);
	}
}
