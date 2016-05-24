package su.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import su.member.model.MemberDTO;
import su.mypage.model.MypageDAO;
import su.mypage.model.MypageDTO;




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
	

	@RequestMapping("/myPage.do")
	public ModelAndView mypage(HttpSession session,HttpServletRequest req){
		String id=(String)session.getAttribute("sid");
		ModelAndView mav=new ModelAndView();
		MemberDTO dto=mypageDao.getAllUserInfo(id);
		mav.setViewName("mypage/myPage");
		mav.addObject("dto",dto);
		return mav;
	}

	
	
	@RequestMapping("/myProfile.do")
	public ModelAndView myProfile(MypageDTO dto,HttpServletRequest req){
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("mypage/myProfile");
		return mav;
	}
	
	@RequestMapping("/myProfileUpdate.do")
	public ModelAndView myProfileUpdate(MypageDTO dto,HttpServletRequest req){
		
		int result=mypageDao.myProfileUpdate(dto);
		String msg=result>0?"내프로필수정완료":"실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("mypage/UpdateMsg");
		return mav;
	}
	


	



	
	
	
	
	
	
}
