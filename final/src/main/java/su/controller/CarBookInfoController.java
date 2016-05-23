package su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import su.carBookInfo.model.CarBookInfoDAO;
import su.carBookInfo.model.CarBookInfoDTO;


@Controller
public class CarBookInfoController {
	
		@Autowired
		private CarBookInfoDAO CarBookInfoDao;
		
		public CarBookInfoDAO getCarBookInfoDao() {
			return CarBookInfoDao;
		}
		
		public void setCarBookInfoDao(CarBookInfoDAO carBookInfoDao){
			CarBookInfoDao = carBookInfoDao;
		}

		@RequestMapping("/carReg.do")
		public String carReg(){
			return "carbook/carReg";
		}
		
		//차량등록
		@RequestMapping(value="/carReg.do",method=RequestMethod.POST)
		public ModelAndView carRegadd(CarBookInfoDTO dto){
			int result=CarBookInfoDao.carAdd(dto);
			String msg=result>0?"등록완료!":"등록실패!";
			ModelAndView mav=new ModelAndView();
			mav.addObject("msg", msg);
			mav.setViewName("carbook/costMsg");
			return mav;
		}
}
