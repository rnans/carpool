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
	 
	 public List viewAllList(int cp, int ls) {
		 int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
		 
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 List<PoolDTO> list= sqlMap.selectList("viewAllList",map);

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
