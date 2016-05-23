package su.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import su.member.model.MemberDTO;
import su.mypage.model.MypageDAO;

@Controller
public class MypageController {

	@Autowired
	private MypageDAO mypageDao;
	
	
	public MypageDAO getMypageDao() {
		return mypageDao;
	}


	public void setMypageDao(MypageDAO mypageDao) {
		this.mypageDao = mypageDao;
	}


	@RequestMapping("myPage.do")
	public ModelAndView mypage(HttpSession session){
		String userid=(String)session.getAttribute("sid");
		ModelAndView mav=new ModelAndView();
		MemberDTO dto=mypageDao.getAllUserInfo(userid);
		
		mav.addObject("dto", dto);
		mav.setViewName("mypage/myPage");
		return mav;
	
				
	}
	
}
