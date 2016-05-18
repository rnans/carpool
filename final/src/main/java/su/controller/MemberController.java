package su.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	@RequestMapping(value="memberJoin.do", method=RequestMethod.GET)
	public String memberJoinForm(){
		
		return "member/memberJoin";
	}
	
	@RequestMapping(value="memberJoin.do", method=RequestMethod.POST)
	public ModelAndView memberJoin(){
		
		ModelAndView mav = new ModelAndView();
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
