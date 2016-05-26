package su.carinfo.carinfocontroller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.PoolDAO;
import su.pool.model.PoolDTO;
import su.carinfo.model.carInfoDAO;
import su.carinfo.model.carInfoDTO;
import su.member.model.*;

@Controller
public class carInfoController 
{
	@Autowired
	private carInfoDAO carInfoDao;
	
	public carInfoDAO getCarInfoDao() {
		return carInfoDao;
	}

	public void setCarInfoDao(carInfoDAO carInfoDao) {
		this.carInfoDao = carInfoDao;
	}

	@RequestMapping(value = "/carAdd.do", method = RequestMethod.GET)
	public String carAddForm() {
		return "carManage/carAdd";
	}

	@RequestMapping(value = "/carAdd.do", method = RequestMethod.POST)
	public ModelAndView carAdd(carInfoDTO dto){
		
		int result = carInfoDao.carAdd(dto);
		String msg = result > 0 ? "차량등록 성공" : "차량등록 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "carList.do");
		mav.setViewName("carManage/carMsg");
		return mav;
		
	}
	@RequestMapping("/carList.do")
	public ModelAndView carList(HttpSession session){
		
		String userid=(String)session.getAttribute("sid");	
		ModelAndView mav = new ModelAndView();
		if(userid==null){

			mav.addObject("msg", "로그인후 이용가능합니다.");
			mav.addObject("gopage", "index.do");
			mav.setViewName("carManage/carMsg");
			
		}else{
			List<carInfoDTO> lists = carInfoDao.carAllList(userid);
			mav.addObject("list", lists);
			mav.setViewName("carManage/carList");
		}
		return mav;
		
	}
	@RequestMapping(value = "/carUpdate.do", method = RequestMethod.GET)
	public ModelAndView carUpdateForm(carInfoDTO dto) {
		
		carInfoDTO idxList = carInfoDao.carList(dto);
		System.out.println(dto.getIdx());
		ModelAndView mav = new ModelAndView();
		mav.addObject("idxList", idxList);
		mav.setViewName("carManage/carUpdate");
		return mav;
	}

	@RequestMapping(value = "/carUpdate.do", method = RequestMethod.POST)
	public ModelAndView carUpdate(carInfoDTO dto){
		
		int result = carInfoDao.carUpdate(dto);
		String msg = result > 0 ? "차량수정 성공" : "차량수정 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "carList.do");
		mav.setViewName("carManage/carMsg");
		return mav;
		
	}
	@RequestMapping("/carDel.do")
	public ModelAndView carDel(carInfoDTO dto){
		
		int result=carInfoDao.carDel(dto);
		String msg = result > 0 ? "차량삭제 성공" : "차량삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "carList.do");
		mav.setViewName("carManage/carMsg");
		return mav;
}
	@RequestMapping("/carTest.do")
	public String test(){
		
		return "carManage/test";
	}
}