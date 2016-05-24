package su.carinfo.model;

import java.util.List;

public interface carInfoDAO {

	public int carAdd(carInfoDTO dto);
	public List<carInfoDTO> carList(String userid);
}
