package su.carCost.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.carinfo.model.carInfoDTO;

public class CarCostDAOImple implements CarCostDAO {

   private SqlSessionTemplate sqlMap;   
   //생성자 방식
   public CarCostDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }
   
   public int costAdd(CarCostDTO dto) {
      
      int count=sqlMap.insert("CarCost", dto);
      return count;
   }
   public List<CarCostDTO> CarCostList(String carnum){
	   List<CarCostDTO> list=sqlMap.selectList("CarCostList", carnum);
	   return list;
   }
   public List<CarCostDTO> CarCostContent(int idx){
	   List<CarCostDTO> list=sqlMap.selectList("CarCostContent", idx);
	   return list;
   }
   public int CarCostUpdate(CarCostDTO dto){
	   int count=sqlMap.insert("CarCostUpdate", dto);
	   return count;
   }
   public int CarCostDelete(int idx){
	   int count=sqlMap.delete("CarCostDelete", idx);
	   return count;
   }
   public int CarCostAdd(CarCostDTO dto){
	   int count=sqlMap.insert("CarCostAdd", dto);
	   return count;
   }
   //컬럼 합산 값 보여주기
   public String CarCostSum(String carnum){
	   String costsum=sqlMap.selectOne("CarCostSum", carnum);
	   return costsum;
   }
   public String CarKmSum(String carnum){
	   String kmsum=sqlMap.selectOne("CarKmSum", carnum);
	   return kmsum;
   }
   
   public String CarJooyuSum(String carnum){
	   String jooyusum=sqlMap.selectOne("CarJooyuSum", carnum);
	   return jooyusum;
   }
   
   public String CarJungbiSum(String carnum){
	   String jungbisum=sqlMap.selectOne("CarJungbiSum", carnum);
	   return jungbisum;

   }
   
   public String CarBuySum(String carnum){
	   String buysum=sqlMap.selectOne("CarBuySum", carnum);
	   return buysum;
   }
   public List<carInfoDTO> carnum(String id){
		List<carInfoDTO> carlist=sqlMap.selectList("getCarnum", id);
		
		return carlist;
	}
   
}