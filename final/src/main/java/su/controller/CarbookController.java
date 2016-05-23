package su.controller;

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
	


	@RequestMapping("carBookInfo.do")
	public String carBookInfo(){
		
	return "carbook/carBookInfo";
	}
	
	@RequestMapping("/costReg.do")
	public String costReg(){
		return "carbook/costReg";
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

	
	@RequestMapping("/cost.do")
	public String cost(){
		return "carbook/cost";
	}
	
	@RequestMapping("/graph.do")
	public String graph(){
		return "carbook/graph";
	}
}
