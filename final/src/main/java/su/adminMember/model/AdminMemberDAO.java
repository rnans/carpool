package su.adminMember.model;

import java.util.List;

public interface AdminMemberDAO {

	public List<AdminMemberDTO> memberinfo();
	public AdminMemberDTO memberList(int idx);
	public int memberDel(int idx);
	public int adminAdd(int idx, String grade);
}
