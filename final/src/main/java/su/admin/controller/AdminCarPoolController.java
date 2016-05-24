package su.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminPool.model.AdminUserPoolDAO;
import su.adminPool.model.AdminUserPoolDTO;

@Controller
public class AdminCarPoolController {

	@Autowired
	private AdminUserPoolDAO adUserPoolDao;

	public AdminUserPoolDAO getAdUserPoolDao() {
		return adUserPoolDao;
	}

	public void setAdUserPoolDao(AdminUserPoolDAO adUserPoolDao) {
		this.adUserPoolDao = adUserPoolDao;
	}
	
	/**유저 등록 카풀 전체보기*/
	@RequestMapping("/userPoolList.do")
	public ModelAndView userPoolList(@RequestParam(value="cp", defaultValue="1")int cp){
		int totalCnt = adUserPoolDao.userPoolTotalCnt();
		int listSize = 10;
		int pageSize = 5;
		
		ModelAndView mav = new ModelAndView();
		List<AdminUserPoolDTO> list = adUserPoolDao.userPoolList(cp, listSize);
		String pageStr = su.Page.SuPage.makePage("userPoolList.do", totalCnt, listSize, pageSize, cp);
		
		mav.addObject("lists", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("admin/userCarpoolList");
		
		return mav;
	}
	
	/**유저 카풀 삭제 폼 이동*/
	@RequestMapping("/userPoolDelForm.do")
	public ModelAndView userPoolDelForm(HttpServletRequest req){
		
		int idx = Integer.parseInt(req.getParameter("idx"));
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("idx", idx);
		mav.setViewName("admin/userCarpoolDel");
		
		return mav;
	}
	
	/**등록된 유저 카플 삭제*/
	@RequestMapping("/userPoolDel.do")
	public ModelAndView userPoolDel(@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		int count = adUserPoolDao.userPoolDel(idx);
		
		String msg = count>0?"이용자 카풀을 삭제하였습니다.!":"이용자 카풀 삭제에 실패하였습니다.!";
		mav.addObject("msg", msg);
		mav.setViewName("admin/adminMsg");
		
		return mav;
	}
	
	/**드라이버 등록 카풀 전체보기*/
	@RequestMapping("/driverPoolList.do")
	public ModelAndView driverPoolList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt = adUserPoolDao.driverPoolTotalCnt();
		int listSize=20;
		int pageSize=5;
		ModelAndView mav = new ModelAndView();
		List<AdminUserPoolDTO> list = adUserPoolDao.driverPoolList(cp, listSize);
		String pageStr = su.Page.SuPage.makePage("driverPoolList.do", totalCnt, listSize, pageSize, cp);
		mav.addObject("lists", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("admin/driverCarpoolList");
		
		return mav;
	}
	
	/**드라이버 예약 카풀 삭제 폼*/
	@RequestMapping("/driverPoolDelForm.do")
	public ModelAndView driverPoolDelForm(HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		int idx = Integer.parseInt(req.getParameter("idx"));
		
		mav.addObject("idx", idx);
		mav.setViewName("admin/driverCarpoolDel");
		
		return mav;
	}
	
	/**드라이버 예약 카풀 삭제*/
	@RequestMapping("/driverPoolDel.do")
	public ModelAndView driverPoolDel(@RequestParam("idx")int idx){
		ModelAndView mav = new ModelAndView();
		int count = adUserPoolDao.userPoolDel(idx);
		
		String msg = count>0?"드라이버 카풀을 삭제하였습니다.!":"드라이버 카풀 삭제에 실패하였습니다.!";
		mav.addObject("msg", msg);
		mav.setViewName("admin/adminMsg");
		
		return mav;
	}
	
}
