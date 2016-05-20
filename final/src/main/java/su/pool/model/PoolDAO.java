package su.pool.model;

import java.util.*;
import su.member.model.*;

public interface PoolDAO 
{
	public int poolMemberAdd(PoolDTO dto);
	
	public MemberDTO getAllUserInfo(String userid);
}
