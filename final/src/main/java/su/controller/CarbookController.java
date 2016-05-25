package su.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

//	//비용등록값 보여주기
//	@RequestMapping("/costList.do")
//		public ModelAndView costList(String id){
//		ModelAndView mav = new ModelAndView(id);
//		List<CarCostDTO> list = CarCostDao.CostList(id);
//		mav.addObject("lists", list);
//		mav.setViewName("carbook/cost");
//		return mav;
//	}
	
	/**비용삭제 확인 폼*/
	@RequestMapping("/costDel.do")
	public ModelAndView costDel(HttpServletRequest req){
		int idx = Integer.parseInt(req.getParameter("idx"));
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("carbook/costDel_ok");
		return mav;
	}
	
	/**비용삭제*/
	@RequestMapping("/costDel_ok.do")
	public ModelAndView costDel_ok(@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		int count = CarCostDao.costDel(idx);
		String result=count>0?"삭제성공":"삭제실패";
		mav.addObject("msg", result);
		mav.setViewName("carbook/costMsg");
		return mav;
	}
	
	//비용등록(값 가져오기)
	@RequestMapping("/costUpdate1.do")
	public ModelAndView costUpdate1(CarCostDTO dto,HttpServletRequest req){
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("carbook/costUpdate");
		return mav;
	}
	//비용등록수정
//	@RequestMapping("/costUpdate2.do")
//	public ModelAndView costUpdate2(CarCostDTO dto,HttpServletRequest req){
//		
//		int result=CarCostDao.(dto);
//		String msg=result>0?"수정완료":"수정실패";
//		ModelAndView mav=new ModelAndView();
//		mav.addObject("msg", msg);
//		mav.setViewName("mypage/costMsg");
//		return mav;
//	}
	
	@RequestMapping("/cost.do")
	public String cost(){
		return "carbook/cost";
	}
	
	@RequestMapping("/graph.do")
	public String graph(){
		return "carbook/graph";
	}
}
