package su.adminComm.model;

import java.util.List;

import su.comm.model.carpoolinfoDTO;

public interface AdminCommDAO {

	public List<carpoolinfoDTO> commList(int cp, int ls);
	public int commTotalCnt();
}
