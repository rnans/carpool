package su.status.model;

import java.util.List;

public interface StatusDAO {
	
	public int loginStatus(StatusDTO sDTO);
	public int loginDel(String userid);
	public int numStatus();
	public List<StatusDTO> listStatus();
	public int logincheck(String userid);
}
