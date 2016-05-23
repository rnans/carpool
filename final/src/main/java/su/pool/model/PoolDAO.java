package su.pool.model;

import java.util.*;
import su.member.model.*;

public interface PoolDAO 
{
	public int poolMemberShortAdd(PoolDTO dto);
	
	public int poolMemberLongAdd(PoolDTO dto);
	
	public MemberDTO getAllUserInfo(String userid);
	
	public int getTotalCnt();
	
	public List viewAllList(int cp, int listSize);
	
	public PoolDTO viewEachContent(int idx);
	
	public int poolMemberShortEdit(PoolDTO dto);
	
	public int poolMemberLongEdit(PoolDTO dto);
}
