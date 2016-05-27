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
	
	public int getOwnMasReqTotalCnt(String id) {
		// TODO Auto-generated method stub
		return sqlMap.selectOne("getOwnMasReqPoolTotalCnt",id);
	}
	
	public int getOwnMemReqTotalCnt(String id) {
		// TODO Auto-generated method stub
		return sqlMap.selectOne("getOwnMemReqPoolTotalCnt",id);
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
		return sqlMap.update("uptoMemberStatus",dto);
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
	
	public List viewOwnMasReqPoolList(int cp, int ls, String id) {
		int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 map.put("id", id);
		 List<PoolDTO> list= sqlMap.selectList("viewOwnMasReqPool",map);

		 return list;
	}
	public List viewOwnMemReqPoolList(int cp, int ls, String id) {
		int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 map.put("id", id);
		 List<PoolDTO> list= sqlMap.selectList("viewOwnMemReqPool",map);

		 return list;
	}
	
	public int accAllMembers(int idx) {
		// TODO Auto-generated method stub
		return sqlMap.update("accAllMembers",idx);
	}
	
	public int accOneMember(int idx, String members) {
		Map map=new HashMap();
		
		map.put("idx", idx);
		map.put("members", members);
		
		System.out.println(idx);
		System.out.println(members);
		return sqlMap.update("accOneMember",map);
	}
	
	public int chgMemStatus(int idx, String members, int aimidx) {
		Map map=new HashMap();
		
		map.put("aimidx", aimidx);
		map.put("idx", idx);
		map.put("members", members);
		
		return sqlMap.update("chgMemStatus",map);
	}
	
	public int chgAllMemStatus(int idx, int aimidx) {
		Map map=new HashMap();
		
		map.put("aimidx", aimidx);
		map.put("idx", idx);
		
		return sqlMap.update("chgAllMemStatus",map);
	}
	
	public int delMemReq(PoolMemberStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.delete("delMemReq",dto);
	}
	
	public int delMasReq(PoolMasterStatusDTO dto)
	{
		return sqlMap.delete("delMasReq",dto);
	}
	
	public int editMasMans(PoolMasterStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.update("editMasMans",dto);
	}
	
	public int editMemMans(PoolMemberStatusDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.update("editMemMans",dto);
	}
	
	public int editMasMans(int aimidx, int mans) {
		Map map=new HashMap();
			
		map.put("aimidx", aimidx);
		map.put("mans", mans);
		
		return sqlMap.update("editMasMansByIdx",map);
	}
	
	public int editMemMans(int ownidx, int mans) {
		Map map=new HashMap();
		
		map.put("ownidx", ownidx);
		map.put("mans", mans);
		return sqlMap.update("editMemMansByIdx",map);
	}
	
	public List getMemReqByAimidx(int aimidx) {
		// TODO Auto-generated method stub
		return sqlMap.selectList("getMemReqByIdx",aimidx);
	}
	
	public int makeCarpoolInfo(PoolInfoDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.insert("makePoolInfo",dto);
	}
	
}
