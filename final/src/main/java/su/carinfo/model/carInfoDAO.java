package su.carinfo.model;

import java.util.List;

public interface carInfoDAO {

	public int carAdd(carInfoDTO dto);
	public List<carInfoDTO> carAllList(String userid);
	public carInfoDTO carList(carInfoDTO dto);
	public int carUpdate(carInfoDTO dto);
	public int carDel(carInfoDTO dto);
}
