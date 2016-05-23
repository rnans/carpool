package su.pool.model;

import java.util.*;
import su.member.model.*;

public interface PoolDAO 
{
	public int poolMemberShortAdd(PoolDTO dto);
	
	public int poolMemberLongAdd(PoolDTO dto);
	
	public MemberDTO getAllUserInfo(String userid);
	
	public int getTotalCnt();
	
	public int getShortTotalCnt();
	
	public int getLongTotalCnt();
	
	public List viewAllList(int cp, int listSize);
	
	public List viewShortList(int cp, int listSize);
	
	public List viewLongList(int cp, int listSize);
	
	public PoolDTO viewEachContent(int idx);
	
	public int poolMemberShortEdit(PoolDTO dto);
	
	public int poolMemberLongEdit(PoolDTO dto);
	
	public int poolDel(int idx);
}
