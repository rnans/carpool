package su.pool.model;

import java.util.*;
import su.member.model.*;
import su.upload.model.UploadDTO;

public interface PoolDAO 
{
	public int poolMemberShortAdd(PoolDTO dto);
	
	public int poolMemberLongAdd(PoolDTO dto);
	
	public int poolMasterShortAdd(PoolDTO dto);
	
	public int poolMasterLongAdd(PoolDTO dto);
	
	public MemberDTO getAllUserInfo(String userid);
	
	public int getTotalCnt();
	
	public int getShortTotalCnt();
	
	public int getLongTotalCnt();
	
	public int getMasterTotalCnt();
	
	public int getMemberTotalCnt();
	
	public int getMasterIdx(String poolname);
	
	public List getCarInfo(String id);
	
	public List getPoolInfo(int idx);
	
	public List viewAllList(int cp, int listSize);
	
	public List viewShortList(int cp, int listSize);
	
	public List viewLongList(int cp, int listSize);
	
	public List viewMemberList(int cp, int ls);
	
	public List viewMasterList(int cp, int ls);
	
	public PoolDTO viewEachContent(int idx);
	
	public int poolShortEdit(PoolDTO dto);
	
	public int poolLongEdit(PoolDTO dto);
	
	public int poolDel(int idx);
	
	public int editPoolMans(int idx, int mans);
	
	public List viewAllList();
	
	public List poolFind(HashMap map);
	
	public List checkPoolName(String poolname);
	
	public List<UploadDTO> proImg1();
}
