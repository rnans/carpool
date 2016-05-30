package su.controller;

import java.io.File; 
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;  

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
/*import su.mypage.model.NotiSettingDTO;*/


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
	
	/**마이페이지 프로필정보*/
	@RequestMapping("/myPage.do")
	public ModelAndView mypage(HttpSession session,HttpServletRequest req){
		String id=(String)session.getAttribute("sid");
		ModelAndView mav=new ModelAndView();
		MemberDTO dto=mypageDao.getAllUserInfo(id);
		mav.setViewName("mypage/myPage");
		mav.addObject("dto",dto);
		return mav;
	}

	
	/**마이 프로필 수정*/
	@RequestMapping("/myProfile.do")
	public ModelAndView myProfile(MypageDTO dto){
		
//		MultipartFile upload=req.getFile("upload");         
//	    String imgUpload = upload.getOriginalFilename();
//	    dto1.setFilename(imgUpload);
//	    copyInto(upload,request);	
		
		ModelAndView mav=new ModelAndView();		
		
		mav.addObject("dto", dto);
		mav.setViewName("mypage/myProfile");
		return mav;
	}
	
//uplaod	
	
	/*@RequestMapping(value="/upload.do",method=RequestMethod.POST)
	public String upload(UploadDTO dto, MultipartHttpServletRequest req, HttpServletRequest request){
	 
		
		
		
		MultipartFile upload=req.getFile("upload");         
	      String filename = upload.getOriginalFilename();
	      dto.setFilename(filename);
	      copyInto(upload,request);
	      
	      return "mypage/myProfile";
			
	}*/
	
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

	
		mav.addObject("dto", dto1);
		mav.setViewName("mypage/pwdUpdate");
		return mav;
		
		
	}
	/**비밀번호 변경*/
	@RequestMapping("/pwdUpdate.do")
	public ModelAndView PwdUpdate(MypageDTO dto,HttpServletRequest req){
		
		int result=mypageDao.pwdUpdate(dto);
		String msg=result>0?"비밀번호수정 완료!":"실패!";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("mypage/UpdateMsg");
		return mav;
	}
	
	/**알람설정 폼이동*/
	@RequestMapping(value="/notiSetting.do", method=RequestMethod.GET)
	public ModelAndView notiSettingForm(MyAlarmDTO dto, @RequestParam("id")String id){
		
		ModelAndView mav = new ModelAndView();
		
		dto = mypageDao.notiInfo(id);
		
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
		mav.addObject("gopage", "myPage.do");
		mav.setViewName("mypage/myPageMsg");
		
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
	
	
	  
	  
	  
	
	
	
}	





	
	
	
	
	
	

