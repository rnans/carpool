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
		
		List<carInfoDTO> lists = carInfoDao.carAllList(userid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", lists);
		mav.setViewName("carManage/carList");
		return mav;
		
	}
	@RequestMapping(value = "/carUpdate.do", method = RequestMethod.GET)
	public ModelAndView carUpdateForm(HttpServletRequest req) {
		
		int idx=(Integer.parseInt(req.getParameter("idx")));
		System.out.println(idx);
		List<carInfoDTO> list = carInfoDao.carList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("carManage/carUpdate");
		return mav;
	}

	@RequestMapping(value = "/carUpdate.do", method = RequestMethod.POST)
	public ModelAndView carUpdate(carInfoDTO dto){
		
		int result = carInfoDao.carAdd(dto);
		String msg = result > 0 ? "차량수정 성공" : "차량수정 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "carList.do");
		mav.setViewName("carManage/carMsg");
		return mav;
		
	}
	
}
