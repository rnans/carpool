package su.carinfo.model;

import java.util.List;

public interface carInfoDAO {

	public int carAdd(carInfoDTO dto);
	public List<carInfoDTO> carAllList(String userid);
	public List<carInfoDTO> carList(int idx);
}
