package su.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminMember.model.AdminCarInfoDAO;
import su.adminMember.model.AdminCarInfoDTO;
import su.adminMember.model.AdminMemberDAO;
import su.adminMember.model.AdminMemberDTO;

@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberDAO adMemberDao;
	
	@Autowired
	private AdminCarInfoDAO adCarInfoDao;
	
	public AdminMemberDAO getAdMemberDao() {
		return adMemberDao;
	}

	public void setAdMemberDao(AdminMemberDAO adMemberDao) {
		this.adMemberDao = adMemberDao;
	}
	
	public AdminCarInfoDAO getAdCarInfoDao() {
		return adCarInfoDao;
	}

	public void setAdCarInfoDao(AdminCarInfoDAO adCarInfoDao) {
		this.adCarInfoDao = adCarInfoDao;
	}

	/**모든 회원 보기*/
	@RequestMapping("/memberInfo.do")
	public ModelAndView memberInfo(@RequestParam(value="cp", defaultValue="1")int cp){
		
		int totalCnt = adMemberDao.memberTotalCnt();
		int listSize = 20;
		int pageSize = 5;
		
		ModelAndView mav = new ModelAndView();
		List<AdminMemberDTO> list = adMemberDao.memberinfo(cp, listSize);
		String pageStr = su.Page.SuPage.makePage("memberInfo", totalCnt, listSize, pageSize, cp);
		
		mav.addObject("lists", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("admin/memberInfo");
		return mav;
	}
	
	/**회원삭제 확인 폼*/
	@RequestMapping("/memberDelForm.do")
	public ModelAndView memberDelForm(HttpServletRequest req){
		int idx = Integer.parseInt(req.getParameter("idx"));
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("idx", idx);
		mav.setViewName("admin/memberDel");
		return mav;
	}
	
	/**회원삭제*/
	@RequestMapping("/memberDel.do")
	public ModelAndView memberDel(@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		int count = adMemberDao.memberDel(idx);
		
		String result=count>0?"회원삭제성공":"회원삭제실패";
		mav.addObject("msg", result);
		mav.setViewName("admin/adminMsg");
		return mav;
	}
	
	/**grade 변경 폼*/
	@RequestMapping("/adminAddForm.do")
	public ModelAndView adminAddForm(HttpServletRequest req){
		
		int idx = Integer.parseInt(req.getParameter("idx"));
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("idx", idx);
		mav.setViewName("admin/adminAdd");
		return mav;
	}
	
	/**grade 변경*/
	@RequestMapping("/adminAdd.do")
	public ModelAndView adminAdd(@RequestParam(value="idx", required=false)int idx,
			@RequestParam(value="grade", required=false)String grade){
		
		ModelAndView mav = new ModelAndView();
		int count = adMemberDao.adminAdd(idx, grade);
		
		String result = count>0?"등급 변경 성공":"등급 변경 실패";
		mav.addObject("msg", result);
		mav.setViewName("admin/adminMsg");
		
		return mav;
	}
	
	////////////////////////////////////////////등록된 차 관리/////////////////////////////////////////////////
	/**등록된 차 목록보기*/
	@RequestMapping("memberCarInfo.do")
	public ModelAndView memberCarInfo(@RequestParam(value="cp", defaultValue="1")int cp){
		int totalCnt = adCarInfoDao.carInfoTotalCnt();
		int listSize = 20;
		int pageSize = 5;
		
		List<AdminCarInfoDTO> list = adCarInfoDao.memberCarInfo(cp, listSize);
		String pageStr = su.Page.SuPage.makePage("memberCarInfo.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("lists", list);
		
		mav.setViewName("admin/memberCarInfo");
		
		return mav;
	}
	
	/**등록된 차정보 삭제 폼 이동*/
	@RequestMapping("/memberCarDelForm.do")
	public ModelAndView memberCarDelForm(HttpServletRequest req){
		int idx = Integer.parseInt(req.getParameter("idx"));
	
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("idx", idx);
		mav.setViewName("admin/memberCarDel");
		
		return mav;	
	}
	
	/**등록된 차정보 삭제*/
	@RequestMapping("/memberCarDel.do")
	public ModelAndView memberCarDel(@RequestParam("idx")int idx){
		
		int count = adCarInfoDao.memberCarDel(idx);
		String msg = count>0?"차량 정보 삭제 성공!":"차량 정보 삭제 실패!"; 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("admin/adminMsg");
		
		return mav;
	}
	
}
