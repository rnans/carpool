package su.carBookInfo.model;

import java.util.List;

import su.carinfo.model.carInfoDTO;

public interface CarBookInfoDAO {

	public int carAdd(CarBookInfoDTO dto);
	public List<CarBookInfoDTO> idcarnum(String id);
	public List<carInfoDTO> carnum(String id);
	
	
}
