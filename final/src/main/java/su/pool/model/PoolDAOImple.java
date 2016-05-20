package su.pool.model;

import java.util.List;
import java.util.*;
import su.member.model.*;

import org.mybatis.spring.SqlSessionTemplate;

public class PoolDAOImple implements PoolDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public PoolDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int poolMemberAdd(PoolDTO dto) 
	{
		return sqlMap.insert("poolMemberAdd",dto);
	}
	
	public MemberDTO getAllUserInfo(String userid) {
		
		List list=sqlMap.selectList("getUserInfo", userid);
		
		if(list==null)
		{
			return null;
		}
		
		MemberDTO dto=(MemberDTO)list.get(0);
		
		return dto;
	}
}
