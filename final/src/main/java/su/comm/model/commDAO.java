package su.comm.model;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface commDAO {	
	
	public int commWrite(commBBSDTO dto);
	
	public List<commBBSDTO> bbsList(); 

	public int scheWrite(scheDTO dto);
	
	public List<scheDTO> scheList();
		
	public List<carpoolinfoDTO> commMemberList(String poolname);
	
	public int bbsdel(String idx);
	
	//uploadtest
	
}
