package su.adminMember.model;

import java.util.List;

public interface AdminMemberDAO {

	public List<AdminMemberDTO> memberinfo(int cp, int ls);
	public int memberTotalCnt();
	
	public int memberDel(int idx);
	public int adminAdd(int idx, String grade);
}
