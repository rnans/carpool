package su.carCost.model;

import java.util.List;

public interface CarCostDAO {

   public int costAdd(CarCostDTO dto);
   public List<CarCostDTO> CarCostList(String id);
   public List<CarCostDTO> CarCostContent(int idx);
   public int CarCostUpdate(CarCostDTO dto);
   public int CarCostDelete(int idx);
   public int CarCostAdd(CarCostDTO dto);
}