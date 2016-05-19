package su.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping(value="/memberJoin.do", method=RequestMethod.GET)
	public String memberJoinForm(){
		
		return "member/memberJoin";
	}
	
	/**회원가입*/
	@RequestMapping(value="/memberJoin.do", method=RequestMethod.POST)
	public ModelAndView memberJoin(MemberDTO dto){
		
		int result = memberDao.memberJoin(dto);
		String msg=result>0?"카풀서비스 가입에 성공하셨습니다.":"회원가입에 실패하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginForm(){
		return "member/memberLogin";
	}
	
	/**로그인*/
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam(value="id", required=false)String id, 
			@RequestParam(value="pwd", required=false)String pwd, HttpSession session){
		
		ModelAndView mav = new ModelAndView();
		int result = memberDao.login(id, pwd);	
		
		if(result==1){
			String name = memberDao.getUserInfo(id);
			session.setAttribute("sname", name);
			session.setAttribute("sid", id);
			mav.addObject("name", name);
			mav.setViewName("member/login_ok");	
		}else{
			mav.addObject("msg", "아이디가 없거나 비밀번호가 잘못되었습니다.");
			mav.setViewName("member/memberMsg");
		}
		return mav;
	}
	
	/**중복검사*/
	@RequestMapping(value="/idCheck.do", method=RequestMethod.POST)
	public ModelAndView idCheck(@RequestParam(value="id", required=false) String id){
		
		ModelAndView mav = new ModelAndView();
		
		boolean result = memberDao.idCheck(id);
		
		if(id==null || id.equals("")){
			mav.addObject("msg", "ID를 입력해 주세요.");
			mav.setViewName("member/ajaxMsg");
		}

		for(int i=0;i<id.length();i++){
		char id_s=id.charAt(i);
		
		if(result){	
			mav.addObject("msg", "중복된 ID입니다.");
		}else if((!(id_s>='0' && id_s<='9') && !(id_s>='a' && id_s<='z'))){	
			mav.addObject("msg", "소문자와 숫자로만 아이디를 사용해 주세요.");
		}else if(id.length()<5||id.length()>=12){
			mav.addObject("msg", "5글자에서 12글자 사이로 입력해주세요.");
		}else{
			mav.addObject("msg", "사용 가능한 ID 입니다.");
		}
		}
		mav.setViewName("member/ajaxMsg");
		return mav;
	}
	
	/**로그아웃*/
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		
		return "redirect:/index.do";
	}
}
