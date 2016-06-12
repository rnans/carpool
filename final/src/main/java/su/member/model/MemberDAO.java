package su.member.model;

import java.util.List;

import su.upload.model.UploadDTO;

public interface MemberDAO {

	public int memberJoin(MemberDTO dto);
	public boolean idCheck(String id);
	public int login(String id, String pwd);
	public List<MemberDTO> getUserInfo(String id); //회원 이름가져오는거
	public String idFind(String name, String phonenum);
	public String pwFind(String id, String phonenum);
}
