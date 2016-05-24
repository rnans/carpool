package su.comm.model;
import java.util.List;

public interface commDAO {	
	
	public int commWrite(commBBSDTO dto);
	
	public List<commBBSDTO> bbsList(); 

	public int scheWrite(scheDTO dto);
	
	public List<scheDTO> scheList();
}
