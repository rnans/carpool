package su.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminReserve.model.AdminPoolMasterStatusDTO;
import su.adminReserve.model.AdminPoolMemberStatusDTO;
import su.adminReserve.model.AdminPoolStatusDAO;

@Controller
public class AdminReserveController {
	@Autowired
	private AdminPoolStatusDAO adminPoolStatusDao;
	
	public AdminPoolStatusDAO getAdminPoolStatusDao() {
		return adminPoolStatusDao;
	}
	public void setAdminPoolStatusDao(AdminPoolStatusDAO adminPoolStatusDao) {
		this.adminPoolStatusDao = adminPoolStatusDao;
	}
	//드라이버 예약관련 리스트
	@RequestMapping("/driverReserveList.do")
   public ModelAndView AdminPoolDriverList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=adminPoolStatusDao.adminPoolDriverTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<AdminPoolMasterStatusDTO> list=adminPoolStatusDao.adminPoolDriverList(cp, listSize);
		String pageStr=
			su.Page.SuPage.makePage("driverReserveList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("admin/driverReserveAdmin");
		return mav;
	}
	//사용자 예약 리스트
	@RequestMapping("/memberReserveList.do")
	public ModelAndView memberReserveList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=adminPoolStatusDao.adminPoolDriverTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<AdminPoolMemberStatusDTO> list=adminPoolStatusDao.adminPoolMemberList(cp, listSize);
		String pageStr=
			su.Page.SuPage.makePage("memberReserveList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("admin/memberReserveAdmin");
		return mav;
		
	}
	@RequestMapping("/payMentList.do")
	public String payMentList(){
		return "admin/paymentList";
	}
}
