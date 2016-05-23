package su.adminMember.model;

import java.util.List;

public interface AdminMemberDAO {

	public List<AdminMemberDTO> memberinfo();
	public int MemberDel(int idx);
}
