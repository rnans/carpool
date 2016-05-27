package su.pool.model;

import java.util.*;

public interface PoolStatusDAO 
{
	public int getOwnMemberTotalCnt(String id);
	
	public int getOwnMasterTotalCnt(String id);
	
	public int getOwnMemReqTotalCnt(String id);
	
	public int getOwnMasReqTotalCnt(String id);
	
	public String getMembers(int addidx);
	
	public List getMemReqByAimidx(int aimidx);
	
	public List viewOwnMemberPoolList(int cp, int ls, String id);
	
	public List viewOwnMasterPoolList(int cp, int ls, String id);
	
	public List viewOwnMemReqPoolList(int cp, int ls, String id);
	
	public List viewOwnMasReqPoolList(int cp, int ls, String id);
	
	public List getOwnPoolByIdx(int idx);
	
	public int reqToMaster(PoolMasterStatusDTO dto);
	
	public int reqToMember(PoolMemberStatusDTO dto);
	
	public int makeMasterStatus(PoolMasterStatusDTO dto);
	
	public int makeMemberStatus(PoolMemberStatusDTO dto);
	
	public int makeCarpoolInfo(PoolInfoDTO dto);
	
	public int accAllMembers(int idx);
	
	public int accOneMember(int idx, String members);
	
	public int chgMemStatus(int idx, String members, int aimidx);
	
	public int chgAllMemStatus(int idx, int aimidx);
	
	public int delMemReq(PoolMemberStatusDTO dto);
	
	public int delMasReq(PoolMasterStatusDTO dto);
	
	public int editMemMans(PoolMemberStatusDTO dto);
	
	public int editMasMans(PoolMasterStatusDTO dto);
	
	public int editMemMans(int ownidx, int mans);
	
	public int editMasMans(int aimidx, int mans);
	
}
