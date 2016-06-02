package su.carCost.model;

import java.util.List;

import su.carinfo.model.carInfoDTO;

public interface CarCostDAO {

   public int costAdd(CarCostDTO dto);
   public List<carInfoDTO> carnum(String id);
   public List<CarCostDTO> CarCostList(String id);
   public List<CarCostDTO> CarCostContent(int idx);
   public int CarCostUpdate(CarCostDTO dto);
   public int CarCostDelete(int idx);
   public int CarCostAdd(CarCostDTO dto);
   public String CarCostSum(String carnum);
   public String CarKmSum(String carnum);
   public String CarJooyuSum(String carnum);
   public String CarJungbiSum(String carnum);
   public String CarBuySum(String carnum);
   public carInfoDTO Carimg(String carnum);
  
//   public List<CarCostDTO> GraphCostList(String id);
}