package su.comm.model;
import java.util.List;

import su.adminMember.model.AdminMemberDTO;

public interface commDAO {	
	
	public int commWrite(commBBSDTO dto);
	
	public List<commBBSDTO> bbsList(); 

	public int scheWrite(scheDTO dto);
	
	public List<scheDTO> scheList();
	
	public List<AdminMemberDTO> commMemberList();
}
