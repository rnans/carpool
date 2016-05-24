package su.pool.model;

import java.util.*;

import su.csCenter.model.CsNoticeDTO;
import su.member.model.*;

import org.mybatis.spring.SqlSessionTemplate;

public class PoolDAOImple implements PoolDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public PoolDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int poolMemberShortAdd(PoolDTO dto) 
	{
		return sqlMap.insert("poolMemberShortAdd",dto);
	}
	
	public int poolMemberLongAdd(PoolDTO dto) 
	{
		return sqlMap.insert("poolMemberLongAdd",dto);
	}
	
	public int poolMasterShortAdd(PoolDTO dto) 
	{
		return sqlMap.insert("poolMasterShortAdd",dto);
	}
	
	public int poolMasterLongAdd(PoolDTO dto) 
	{
		return sqlMap.insert("poolMasterLongAdd",dto);
	}
	
	public int poolMemberLongEdit(PoolDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.update("poolMemberLongEdit",dto);
	}
	
	public int poolMemberShortEdit(PoolDTO dto) {
		// TODO Auto-generated method stub
		return sqlMap.update("poolMemberShortEdit",dto);
	}
	
	public int poolDel(int idx)
	{
		return sqlMap.delete("poolDel",idx);
	}
	
	public MemberDTO getAllUserInfo(String userid) 
	{
		
		List list=sqlMap.selectList("sql.poolSQL.getUserInfo", userid);
		
		if(list==null)
		{
			return null;
		}
		
		MemberDTO dto=(MemberDTO)list.get(0);
		
		return dto;
	}
	
	 public int getTotalCnt(){
		 int count=sqlMap.selectOne("sql.poolSQL.totalCnt");
			return count;
	 }
	 
	 public int getLongTotalCnt() {
		 int count=sqlMap.selectOne("sql.poolSQL.shortTotalCnt");
			return count;
	}
	 
	 public int getShortTotalCnt() {
		 int count=sqlMap.selectOne("sql.poolSQL.longTotalCnt");
			return count;
	}
	 
	 public List viewAllList(int cp, int ls) {
		 int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 List<PoolDTO> list= sqlMap.selectList("viewAllList",map);

		 return list;
	}
	 
	 public List viewLongList(int cp, int ls) {
		 int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 List<PoolDTO> list= sqlMap.selectList("viewLongList",map);

		 return list;
	}
	 
	 public List viewShortList(int cp, int ls) {
		 int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 List<PoolDTO> list= sqlMap.selectList("viewShortList",map);

		 return list;
	}
	 
	 public PoolDTO viewEachContent(int idx) {
			
			List list=sqlMap.selectList("viewEachContent", idx);
			
			if(list==null)
			{
				return null;
			}
			
			PoolDTO dto=(PoolDTO)list.get(0);
			
			return dto;
	}
}
