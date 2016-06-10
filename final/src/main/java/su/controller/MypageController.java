package su.controller;

import java.io.File; 
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

//import su.file.model.UploadDTO;
import su.member.model.MemberDTO;
import su.mypage.model.MyAlarmDTO;
import su.mypage.model.MypageDAO;
import su.mypage.model.MypageDTO;
import su.pool.model.PoolRateDAO;
import su.pool.model.PoolRateDTO;
/*import su.mypage.model.NotiSettingDTO;*/
import su.upload.model.UploadDAO;
import su.upload.model.UploadDTO;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;



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
	@Autowired
	private UploadDAO uploadDao;
	
	
	public UploadDAO getUploadDao() {
		return uploadDao;
	}


	public void setUploadDao(UploadDAO uploadDao) {
		this.uploadDao = uploadDao;
	}



	/**마이페이지 프로필정보*/
	@RequestMapping("/myPage.do")
	public ModelAndView mypage(HttpSession session,HttpServletRequest req){
		String id=(String)session.getAttribute("sid");
		ModelAndView mav=new ModelAndView();
		
		if(id==null){
			mav.setViewName("mypage/myPageMsg");
			mav.addObject("msg", "로그인 후 이용 가능합니다.");
			System.out.println("로그인후이용가능");
		}else if(!(id.equals(""))||!(id==null)){
			MemberDTO dto=mypageDao.getAllUserInfo(id);
			List<UploadDTO> dto2=uploadDao.imgFind(id);
			mav.setViewName("mypage/myPage2");
			mav.addObject("dto",dto);
			mav.addObject("dto2", dto2);	
		}

		return mav;
	}

	
	/**마이 프로필 수정*/
	@RequestMapping("/myProfile.do")
	public ModelAndView myProfile(MypageDTO dto,HttpSession sion){
		String id=(String)sion.getAttribute("sid");	
		ModelAndView mav=new ModelAndView();		
		List<UploadDTO> dto2=uploadDao.imgFind(id);
		mav.addObject("dto", dto);
		mav.addObject("dto2",dto2);
		mav.setViewName("mypage/myProfile2");
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
	
	
	/**비밀번호 변경폼*/
	@RequestMapping(value="pwdUpdateForm.do",method=RequestMethod.GET)
	public ModelAndView pwdUpdateForm(MypageDTO dto,HttpSession session){
		
		
		String id=(String)session.getAttribute("sid");
		ModelAndView mav=new ModelAndView();
		MemberDTO dto1=mypageDao.getAllUserInfo(id);
		List<UploadDTO> dto2=uploadDao.imgFind(id);
		
		mav.addObject("dto2",dto2);
		
		mav.addObject("dto", dto1);
		mav.setViewName("mypage/pwdUpdate2");
		return mav;
		
		
	}
	/**비밀번호 변경*/
	@RequestMapping("/pwdUpdate.do")
	public ModelAndView PwdUpdate(MypageDTO dto,HttpServletRequest req,
			@Param(value="nowpwd")String nowpwd,
			@Param(value="nowpwd2")String nowpwd2){
		
		String msg=null;
		ModelAndView mav=new ModelAndView();
		mav.addObject("gopage","pwdUpdateForm.do");
		mav.setViewName("mypage/yangMyPageMsg");
		if(nowpwd2.equals("") || dto.getPwd().equals("") || dto.getPwd2().equals("")){
			
			msg="빈칸을 입력하세요.";
		
		}else if(!(nowpwd.equals(nowpwd2))){
		
			msg="현재 비번이 틀렸습니다.";
			
		}else if(dto.getPwd().equals(dto.getPwd2())){
			
			
			int result=mypageDao.pwdUpdate(dto);
			msg=result>0?"비밀번호수정 완료!":"실패!";
		}else{
			
			msg="새로운 비번을 확인하세요.";
		}
		mav.addObject("msg", msg);
		return mav;
	}
	
	/**알람설정 폼이동*/
	@RequestMapping(value="/notiSetting.do", method=RequestMethod.GET)
	public ModelAndView notiSettingForm(MyAlarmDTO dto, @RequestParam("id")String id){
		
		ModelAndView mav = new ModelAndView();

		List<UploadDTO> dto2=uploadDao.imgFind(id);
		dto = mypageDao.notiInfo(id);

		mav.addObject("dto2",dto2);
		mav.addObject("dto", dto);
		mav.setViewName("mypage/notiSetting");
		
		return mav;
	}
	/**알림설정하기*/
	@RequestMapping(value="/notiSetting.do", method=RequestMethod.POST)
	public ModelAndView notiSetting(MyAlarmDTO dto){
		
		
		ModelAndView mav = new ModelAndView();
		int result = mypageDao.notiSetting(dto);
		
		String msg = result>0?"알람설정완료!":"알람설정실패!";
		mav.addObject("msg", msg);
		mav.addObject("gopage", "myPage.do");
		mav.setViewName("mypage/myPageMsg");
		
		return mav;
	}
	
	@RequestMapping(value="/alarmUpdate.do", method=RequestMethod.POST)
	public ModelAndView alarmUpdate(MyAlarmDTO dto){
		ModelAndView mav = new ModelAndView();
		int result = mypageDao.alarmUpdate(dto);
		
		String msg = result>0?"알림변경완료!":"알림변경실패!";
		mav.addObject("msg", msg);
		mav.setViewName("mypage/UpdateMsg");
		
		return mav;
	}
	
	
	
	//파일복사관련
	  private void copyInto(MultipartFile upload,HttpServletRequest request){
	      
		  String teamSrc_foods = "final02/src/main/webapp/img/";
	      HttpSession session = request.getSession();
	      String root = session.getServletContext().getRealPath("/");
	      String teamSrc = root.substring(0, root.indexOf(".metadata")) + teamSrc_foods;
	     
	     String Src = teamSrc.replace("\\", "/");
		  
		  
	      System.out.println("올린파일명:"+upload.getOriginalFilename());
	      
	      try {
	         byte[] bytes=upload.getBytes();
	         File outFile = new File(Src+upload.getOriginalFilename());
	         FileOutputStream fos = new FileOutputStream(outFile);
	         fos.write(bytes);
	         fos.close();
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	   }
	
	  //회원탈퇴
	  @RequestMapping("/memDel.do")
		public ModelAndView memberDel(MypageDTO dto,HttpSession session){
			ModelAndView mav=new ModelAndView();
			String id=(String)session.getAttribute("sid");
			MemberDTO dto1=mypageDao.getAllUserInfo(id);
		
		  if(dto.getPwd().equals("")||dto.getPwd()==null){
			  mav.addObject("msg", "비밀번호를 입력해 주세요.");
			  mav.addObject("loc", "memberleave.do");
			  mav.setViewName("mypage/myPageMsg");
		  }else if(dto.getPwd().equals(dto1.getPwd())){
			  int result=mypageDao.memberDel(id);
			  mav.addObject("loc", "index.do");
			  mav.addObject("msg", "탈퇴성공");
			  session.invalidate();
			  mav.setViewName("mypage/myPageMsg");
		  }else{
			  mav.addObject("msg", "정확한 비밀번호를 입력해 주세요.");
			  mav.addObject("loc", "memberleave.do");
			  mav.setViewName("mypage/myPageMsg");
		  }
			
			return mav;
		}
	  
	  
	  @RequestMapping("/memberleave.do")
	  public ModelAndView memberleave(HttpSession session){

		String id=(String)session.getAttribute("sid");
		ModelAndView mav=new ModelAndView();
		List<UploadDTO> dto2=uploadDao.imgFind(id);
		mav.addObject("dto2",dto2);
		mav.setViewName("mypage/memberleave2");
		return mav;
	  }
	  
	  

	
	
	  
	
	
	
}	





	
	
	
	
	
	

