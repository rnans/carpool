package su.carCost.model;

import java.util.List;

public interface CarCostDAO {

	//비용등록
	public int costAdd(CarCostDTO dto);
	
	//비용리스트 보여주기
	public List<CarCostDTO> CostList();
	
	//비용삭제
	public int costDel(int idx);

}
