package su.pool.model;

import java.util.*;

public interface PoolStatusDAO 
{
	public int getOwnMemberTotalCnt();
	
	public int getOwnMasterTotalCnt();
	
	public String getMembers(int addidx);
	
	public List viewOwnMemberPoolList(int cp, int ls, String id);
	
	public List viewOwnMasterPoolList(int cp, int ls, String id);
	
	public int reqToMaster(PoolMasterStatusDTO dto);
	
	public int reqToMember(PoolMemberStatusDTO dto);
	
	public int makeMasterStatus(PoolMasterStatusDTO dto);
	
	public int makeMemberStatus(PoolMemberStatusDTO dto);
}
