package su.status.model;

public interface StatusDAO {
	
	public int loginStatus(StatusDTO sDTO);
	public int loginDel(String userid);
	public int numStatus();
}
