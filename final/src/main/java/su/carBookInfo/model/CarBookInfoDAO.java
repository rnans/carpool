package su.carBookInfo.model;

import java.util.List;

public interface CarBookInfoDAO {

	public int carAdd(CarBookInfoDTO dto);
	public List<CarBookInfoDTO> idcarnum(String id);
		
	
}
