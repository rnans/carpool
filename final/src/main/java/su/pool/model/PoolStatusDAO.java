package su.pool.model;

import java.util.*;

public interface PoolStatusDAO 
{
	public int getOwnMemberTotalCnt(String id);
	
	public int getOwnMasterTotalCnt(String id);
	
	public int getOwnMemReqTotalCnt(String id);
	
	public int getOwnMasReqTotalCnt(String id);
	
	public String getMembers(int addidx);
	
	public List viewOwnMemberPoolList(int cp, int ls, String id);
	
	public List viewOwnMasterPoolList(int cp, int ls, String id);
	
	public List viewOwnMemReqPoolList(int cp, int ls, String id);
	
	public List viewOwnMasReqPoolList(int cp, int ls, String id);
	
	public List getOwnPoolByIdx(int idx);
	
	public int reqToMaster(PoolMasterStatusDTO dto);
	
	public int reqToMember(PoolMemberStatusDTO dto);
	
	public int makeMasterStatus(PoolMasterStatusDTO dto);
	
	public int makeMemberStatus(PoolMemberStatusDTO dto);
	
	public int accAllMembers(int idx);
	
	public int accOneMember(int idx, String members);
	
	public int chgMemStatus(int idx, String members, int aimidx);
}
