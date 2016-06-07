package su.adminComm.model;

import java.util.List;

import su.comm.model.carpoolinfoDTO;
import su.pool.model.PoolDTO;

public interface AdminCommDAO {

	public List<carpoolinfoDTO> commList(int cp, int ls);
	public List<carpoolinfoDTO> commList2();
	public List<PoolDTO> commList3();
	
	
	public int commTotalCnt();
}
