package su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import su.member.model.MemberDAO;
import su.member.model.MemberDTO;


@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO memberDao;

	public MemberDAO getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@RequestMapping(value="memberJoin.do", method=RequestMethod.GET)
	public String memberJoinForm(){
		
		return "member/memberJoin";
	}
	
	@RequestMapping(value="memberJoin.do", method=RequestMethod.POST)
	public ModelAndView memberJoin(MemberDTO dto){
		
		int result = memberDao.memberJoin(dto);
		String msg=result>0?"카풀서비스 가입에 성공하셨습니다.":"회원가입에 실패하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String loginForm(){
		return "member/memberLogin";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login(){
		
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
