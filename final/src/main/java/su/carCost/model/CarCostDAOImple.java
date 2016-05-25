package su.carCost.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

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
   public List<CarCostDTO> CarCostList(String id){
	   List<CarCostDTO> list=sqlMap.selectList("CarCostList", id);
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
}