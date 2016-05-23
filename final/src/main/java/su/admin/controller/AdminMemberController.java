package su.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminMember.model.AdminMemberDAO;
import su.adminMember.model.AdminMemberDTO;

@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberDAO adMemberDao;
	
	public AdminMemberDAO getAdMemberDao() {
		return adMemberDao;
	}

	public void setAdMemberDao(AdminMemberDAO adMemberDao) {
		this.adMemberDao = adMemberDao;
	}
	
	/**모든 회원 보기*/
	@RequestMapping("/memberInfo.do")
	public ModelAndView memberInfo(){
		
		ModelAndView mav = new ModelAndView();
		List<AdminMemberDTO> list = adMemberDao.memberinfo();
		
		mav.addObject("lists", list);
		mav.setViewName("admin/memberInfo");
		return mav;
	}
	
	/**회원탈퇴 확인 폼*/
	@RequestMapping("/memberDelForm.do")
	public ModelAndView memberDelForm(@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		AdminMemberDTO dto = adMemberDao.memberList(idx);
		
		mav.addObject("dto", dto);
		mav.setViewName("admin/memberDel");
		return mav;
	}
	
	/**회원탈퇴*/
	@RequestMapping("/memberDel.do")
	public ModelAndView memberDel(@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		int count = adMemberDao.memberDel(idx);
		
		String result=count>0?"회원삭제성공":"회원삭제실패";
		mav.addObject("msg", result);
		mav.setViewName("admin/adminMsg");
		return mav;
	}
	
	/**관리자권한 부여 폼*/
	@RequestMapping("/adminAddForm.do")
	public ModelAndView adminAddForm(@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		AdminMemberDTO dto = adMemberDao.memberList(idx);
		
		mav.addObject("dto", dto);
		mav.setViewName("admin/adminAdd");
		return mav;
	}
	
	/**관리자권한 부여*/
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
}
