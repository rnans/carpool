package su.pool.model;

import java.util.*;

public interface PoolStatusDAO 
{
	public int reqToMember(PoolMasterStatusDTO dto);
	
	public int addToMember(PoolMasterStatusDTO dto);
	
	public List viewOwnMemberPoolList(String id);
}
