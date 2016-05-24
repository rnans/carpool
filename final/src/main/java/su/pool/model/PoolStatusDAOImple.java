package su.pool.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public int getOwnMasterTotalCnt(String id) {
		// TODO Auto-generated method stub
		return sqlMap.selectOne("sql.poolStatusSQL.getOwnMasterPoolTotalCnt",id);
	}
	
	public int getOwnMemberTotalCnt(String id) {
		// TODO Auto-generated method stub
		return sqlMap.selectOne("sql.poolStatusSQL.getOwnMemberPoolTotalCnt",id);
	}
	
	public List getOwnPoolByIdx(int idx) {
		// TODO Auto-generated method stub
		return sqlMap.selectList("getOwnPoolByIdx",idx);
	}
	
	public int makeMasterStatus(PoolMasterStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.insert("intoMasterStatus",dto);
	}
	
	public int makeMemberStatus(PoolMemberStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.insert("intoMemberStatus",dto);
	}
	
	public int reqToMaster(PoolMasterStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.update("uptoMasterStatus",dto);
	}
	
	public int reqToMember(PoolMemberStatusDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public String getMembers(int addidx) {
		// TODO Auto-generated method stub
		return sqlMap.selectOne("getMembers",addidx);
	}
	
	public List viewOwnMasterPoolList(int cp, int ls, String id) {
		int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 map.put("id", id);
		 List<PoolDTO> list= sqlMap.selectList("viewOwnMasterPool",map);

		 return list;
	}
	
	public List viewOwnMemberPoolList(int cp, int ls, String id) {
		int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 map.put("id", id);
		 List<PoolDTO> list= sqlMap.selectList("viewOwnMemberPool",map);

		 return list;
	}
}
