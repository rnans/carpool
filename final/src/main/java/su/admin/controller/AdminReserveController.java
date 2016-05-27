package su.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminReserve.model.AdminPoolMasterStatusDTO;
import su.adminReserve.model.AdminPoolMemberStatusDTO;
import su.adminReserve.model.AdminPoolStatusDAO;
import su.pool.model.PoolDAO;
import su.pool.model.PoolDTO;

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
	@Autowired
	private PoolDAO poolDao;
	public PoolDAO getPoolDao() {
		return poolDao;
	}
	public void setPoolDao(PoolDAO poolDao) {
		this.poolDao = poolDao;
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
	//드라이버 예약 글취소
	@RequestMapping("/adminDriverReserveDel.do")
	public ModelAndView adminDriverReserveDel(HttpServletRequest req){
		int idx=(Integer.parseInt(req.getParameter("idx")));
		ModelAndView mav=new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("admin/driverReserveDel");
		return mav;
	}
	@RequestMapping("/adminDriverReserveDel_ok.do")
	public ModelAndView adminDriverReserveDel_ok(int idx){
		
		int result=adminPoolStatusDao.adminDriverReserveDel(idx);
		String msg = result>0?"삭제성공!":"삭제실패!";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("admin/adminMsg");
		return mav;
	}
	//드라이버 예약 등록된게시물 보기

	@RequestMapping("/adminAimidxContent.do")
	public ModelAndView adminAimidxContent(@RequestParam(value="idx")int idx){
		PoolDTO dto=poolDao.viewEachContent(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("admin/adminAimidxContent");
		return mav;
	}
	//사용자 예약 리스트
	@RequestMapping("/memberReserveList.do")
	public ModelAndView memberReserveList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=adminPoolStatusDao.adminPoolMemberTotlCnt();
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
	//드라이버 예약 글취소
	@RequestMapping("/adminMemberReserveDel.do")
	public ModelAndView adminMemberReserveDel(HttpServletRequest req){
		int idx=(Integer.parseInt(req.getParameter("idx")));
		ModelAndView mav=new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("admin/memberReserveDel");
		return mav;
	}
	@RequestMapping("/adminMemberReserveDel_ok.do")
	public ModelAndView adminMemberReserveDel_ok(int idx){
		
		int result=adminPoolStatusDao.adminMemberReserveDel(idx);
		String msg = result>0?"삭제성공!":"삭제실패!";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("admin/adminMsg");
		return mav;
	}
	@RequestMapping("/payMentList.do")
	public String payMentList(){
		return "admin/paymentList";
	}
}
