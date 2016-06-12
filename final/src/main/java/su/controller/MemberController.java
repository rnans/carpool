package su.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import su.member.model.MemberDAO;
import su.member.model.MemberDTO;
import su.message.model.MessageDAO;
import su.status.model.StatusDAO;
import su.status.model.StatusDTO;
import su.upload.model.UploadDAO;
import su.upload.model.UploadDTO;


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
	@Autowired
	public MessageDAO messageDao;
	
	public MessageDAO getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDAO messageDao) {
		this.messageDao = messageDao;
	}
	
	@Autowired
	private UploadDAO uploadDao;	
	public UploadDAO getUploadDao() {
		return uploadDao;
	}
	public void setUploadDao(UploadDAO uploadDao) {
		this.uploadDao = uploadDao;
	}
	
//	@Autowired
//	private MypageDAO mypageDao;
//	
//
//
//	public MypageDAO getMypageDao() {
//		return mypageDao;
//	}
//	public void setMypageDao(MypageDAO mypageDao) {
//		this.mypageDao = mypageDao;
//	}

	String root_path=null;
	 String attach_path=null;
	 
	 private void copyInto(MultipartFile upload, HttpServletRequest request){
	     System.out.println("올린파일명:"+upload.getOriginalFilename());
	   
	     //경로
	    root_path = request.getSession().getServletContext().getRealPath("/");  
	    attach_path = "img/";

	     try {
	      byte[] bytes=upload.getBytes();
	      File outFile=
	            new File(root_path+attach_path+upload.getOriginalFilename());
	      FileOutputStream fos= 
	                       new FileOutputStream(outFile);
	      fos.write(bytes);
	      fos.close();
	   } catch (IOException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	   }
	  }

	@RequestMapping(value="/memberJoin.do", method=RequestMethod.GET)
	public String memberJoinForm(){
		
		return "member/memberJoin";
	}
	
	@Autowired
	private StatusDAO statusDao;
	public StatusDAO getStatusDao() {
		return statusDao;
	}

	public void setStatusDao(StatusDAO statusDao) {
		this.statusDao = statusDao;
	}

	/**회원가입*/
	@RequestMapping(value="/memberJoin.do", method=RequestMethod.POST)
	public ModelAndView memberJoin(MemberDTO dto, 
			HttpSession session, UploadDTO dto2){
		
		
		ModelAndView mav = new ModelAndView();
		
		int result = memberDao.memberJoin(dto);
		
		String msg = result>0?"카풀서비스 가입에 성공하셨습니다.":"회원가입에 실패하셨습니다.";
		
		if(result>0){

			 
			 String filename="basic.jpg";
			 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
			 String filetype="0";
		     String filepath="http://localhost:9090/final02/img/"+filename;
			 String id=dto.getId();
			 
			 dto2.setId(id); 
			 
		    	 dto2.setFilename(filename); 
				 dto2.setFilepath(filepath); dto2.setFiletype(filetype);
				 
				 int count=uploadDao.carupload(dto2);
				 String msg2=count>0?"upload 성공":"upload 실패";
				 System.out.println(msg2);
			     System.out.println("id :"+id);
			     System.out.println("filename:"+filename);
			     System.out.println("filepath:"+filepath);
		  
		}
		
		mav.addObject("msg", msg);
		mav.addObject("loc", "index.do");
		mav.setViewName("member/memberMsg");
		
		return mav;
		
		
	}
	/**로그인 폼 이동 및 아이디 기억하기*/
	@RequestMapping("/loginForm.do")
	public String loginForm(){
		
		return "member/memberLogin";
	}
	
	/**로그인*/
	@RequestMapping(value="/login.do", method={RequestMethod.GET, RequestMethod.POST})

	public ModelAndView login(@RequestParam(value="id", required=false)String id, 
			StatusDTO sDTO,
			@RequestParam(value="pwd", required=false)String pwd, HttpSession session){
			
		ModelAndView mav = new ModelAndView();
		int result = memberDao.login(id, pwd);
		
		if(result==1){
			List<MemberDTO> dto= memberDao.getUserInfo(id);
			String name = dto.get(0).getName();
			String grade = dto.get(0).getGrade();
			
			session.setAttribute("sname", name);
			session.setAttribute("sid", id);
			session.setAttribute("grade", grade);
			
			sDTO.setUserid(id);
			String userid = (String)session.getAttribute("sid");
			
			int messageNumber=messageDao.messageNumber(userid);
			session.setAttribute("mNum", messageNumber);
			
			int check=statusDao.logincheck(userid);
			if(check==0){
			int count = statusDao.loginStatus(sDTO);
			if(count>0)System.out.println(userid+"님이 로그인");
			}
			
			mav.addObject("name", name);
			mav.setViewName("member/login_ok");
		}else{
			mav.addObject("msg", "아이디가 없거나 비밀번호가 잘못되었습니다.");
			mav.addObject("loc", "loginForm.do");
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
		
		
		String userid = (String)session.getAttribute("sid");
		session.invalidate();
		int count = statusDao.loginDel(userid);
		
		return "redirect:/index.do";
	}
	
	/**아이디 찾기*/
	@RequestMapping(value="/idFind.do", method={RequestMethod.POST,RequestMethod.GET })
	public ModelAndView idFind(@RequestParam(value="name", required=false)String name, 
			@RequestParam(value="phonenum", required=false)String phonenum){
		ModelAndView mav = new ModelAndView();
		String id = memberDao.idFind(name, phonenum);
		
		if(id==null || phonenum==null){
			mav.addObject("msg", "이름 및 전화번호를 제대로 입력해주세요.");
			mav.addObject("loc", "idFind.do");
			mav.setViewName("member/memberMsg");
		}else{
			mav.addObject("msg", "회원님의 ID는 "+id+"입니다.");
			mav.addObject("status", "1");
			mav.addObject("loc", "index.do");
			mav.setViewName("member/memberMsg");
		}
		return mav;
	}
	
	/**비밀번호 찾기*/
	@RequestMapping(value="/pwFind.do", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView pwFind(@RequestParam(value="id", required=false)String id,
			@RequestParam(value="phonenum", required=false)String phonenum){
		
		ModelAndView mav = new ModelAndView();
		String pwd = memberDao.pwFind(id, phonenum);
		
		if(pwd==null){
			mav.addObject("msg", "아이디 및 전화번호를 제대로 입력해주세요.");
			mav.addObject("loc", "pwFind.do");
			mav.setViewName("member/memberMsg");
		}else{
			mav.addObject("msg", "회원님의 비밀번호는 "+pwd+"입니다."	);
			mav.addObject("loc", "login.do");
			mav.setViewName("member/memberMsg");
		}
		return mav;
	}
	
	/**현재접속인원 수 파악*/
	
	@RequestMapping("/memberList.do")
	public ModelAndView numStatus(String poolname){
		
		int count = statusDao.numStatus();
		List<StatusDTO> list = statusDao.listStatus();
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("poolname", poolname);
		mav.addObject("count",count);
		mav.addObject("lists",list);
		mav.setViewName("memberList");
		return mav;
	}
}
