package su.pool.model;

import java.util.HashMap;
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
	
	public List checkRate(String id, String aimid) {
		// TODO Auto-generated method stub
		HashMap map=new HashMap();
		
		map.put("userid", id);
		map.put("aimid", aimid);
		return sqlMap.selectList("checkRate",map);
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
	
	public PoolRateAvgDTO getAvrRateByAimid(String aimid) {
		// TODO Auto-generated method stub
		return sqlMap.selectOne("getAvrRateByAimid",aimid);
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
