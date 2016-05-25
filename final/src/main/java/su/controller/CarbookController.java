package su.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import su.carCost.model.*;

@Controller
public class CarbookController {
   
   @Autowired
   private CarCostDAO CarCostDao;


   public CarCostDAO getCarCostDao() {
	return CarCostDao;
}

public void setCarCostDao(CarCostDAO carCostDao) {
	CarCostDao = carCostDao;
}
//수정
@RequestMapping("costUpdate.do")
   public ModelAndView costUpdate(int idx){
     List<CarCostDTO> list=CarCostDao.CarCostContent(idx);
      ModelAndView mav=new ModelAndView();
      mav.addObject("list", list);
      mav.setViewName("carbook/costUpdate");
    return mav;
   }
@RequestMapping("costUpdate_ok.do")
public ModelAndView costUpdate_ok(CarCostDTO dto){
	
	int result=CarCostDao.CarCostUpdate(dto);
	 String msg=result>0?"수정완료!":"수정실패!";
	 ModelAndView mav=new ModelAndView();
	 mav.addObject("msg", msg);
	 mav.setViewName("carbook/costUpdateMsg");
	 return mav;
}
   
   //비용등록
   @RequestMapping(value="/costReg.do",method=RequestMethod.POST)
   public ModelAndView costRegAdd(CarCostDTO dto){
      int result=CarCostDao.costAdd(dto);
      String msg=result>0?"등록완료!":"등록실패!";
      ModelAndView mav=new ModelAndView();
      mav.addObject("msg", msg);
      mav.setViewName("carbook/costMsg");
      return mav;
   }

   //리스트보여주기
   @RequestMapping("/cost.do")
   public ModelAndView CarCostList(String id,HttpServletRequest req){
      String sid=req.getParameter("id");
      List<CarCostDTO> list=CarCostDao.CarCostList(id);
	  ModelAndView mav=new ModelAndView();
	  mav.addObject("list", list);
	  mav.setViewName("carbook/cost");
      return mav;
   }
   //삭제
   @RequestMapping("/costDel.do")
	public ModelAndView costDelete(HttpServletRequest req){
		int idx=(Integer.parseInt(req.getParameter("idx")));
		ModelAndView mav=new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("carbook/costDel");
		return mav;
	}
   @RequestMapping("/costDel_ok.do")
   public ModelAndView costDelete_ok(int idx){
	   int result=CarCostDao.CarCostDelete(idx);
	   String msg=result>0?"삭제성공!":"삭제실패!";
	   ModelAndView mav=new ModelAndView();
	   mav.addObject("msg", msg);
	   mav.setViewName("carbook/costDelMsg");
	   return mav;
   }
   //추가
   @RequestMapping("/costReg")
   public String costReg(){
	   return "carbook/costReg";
   }
   @RequestMapping("/costReg_ok.do")
   public ModelAndView costReg_ok(CarCostDTO dto){
      int result=CarCostDao.CarCostAdd(dto);
      String msg=result>0?"등록성공!":"등록실패!";
      ModelAndView mav=new ModelAndView();
      mav.addObject("msg", msg);
      mav.setViewName("carbook/costUpdateMsg");
      return mav;
    	  
   }

   @RequestMapping("/graph.do")
   public String graph(){
      return "carbook/graph";
   }
}