package su.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import su.member.model.MemberDTO;
import su.mypage.model.MypageDAO;
import su.mypage.model.MypageDTO;
import su.yangmypage.model.yangMypageDAO;
import su.yangmypage.model.yangMypageDTO;

@Controller
public class yangMyPageController {

	@Autowired
	private yangMypageDAO yangMyPageDao;

	public yangMypageDAO getYangMyPageDao() {
		return yangMyPageDao;
	}

	public void setYangMyPageDao(yangMypageDAO yangMyPageDao) {
		this.yangMyPageDao = yangMyPageDao;
	}
	@RequestMapping("/userPayInfo.do")
	public ModelAndView userPayInfoForm(HttpSession session){
		
		String userid=(String)session.getAttribute("sid");	
		List<yangMypageDTO> dto=yangMyPageDao.allPayInfo(userid);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("mypage/userPayInfo");
		
		return mav;
	}
	@RequestMapping("/userPayAddPage.do")
	public String userPayAddPage(){
		
		return "mypage/userPayAdd";
	}
	@RequestMapping("/userPayAdd.do")
	public ModelAndView userPayAdd(HttpServletRequest req,
			HttpSession session,yangMypageDTO dto,@RequestParam(value="cardnum1")String cardnum1,
			@RequestParam(value="cardnum2")String cardnum2,
			@RequestParam(value="cardnum3")String cardnum3,
			@RequestParam(value="cardnum4")String cardnum4,
			@RequestParam(value="cardterm1")String cardterm1,
			@RequestParam(value="cardterm2")String cardterm2){
		
		String userid=(String)session.getAttribute("sid");
		dto.setUserid(userid);
		String cardnum=cardnum1+cardnum2+cardnum3+cardnum4;
		dto.setCardnum(cardnum);
		String cardterm=cardterm1+cardterm2;
				dto.setCardterm(cardterm);
		int result=yangMyPageDao.userPayAdd(dto);
		String msg=result>0?"결제정보 등록 성공":"결제정보 등록 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("gopage","mypage/userPayInfo");
		mav.setViewName("mypage/myPageMsg");
		
		return mav;
	}
	
	
	
	
}	