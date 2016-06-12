package su.upload.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import su.mypage.model.MypageDAO;
import su.mypage.model.MypageDTO;
import su.upload.model.UploadDAO;
import su.upload.model.UploadDTO;

@Controller
public class UploadController {
	
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
	 	
	
	//test
		@RequestMapping("upload.do")
		public ModelAndView uploadTest(){
			ModelAndView mav=new ModelAndView();
			//mav.setViewName("upload/uploadTest");
			mav.setViewName("mypage/myProfile");
			return mav;
		}
		 
	 
	@RequestMapping(value="uploadimgUpdate.do",  method=RequestMethod.POST)
	public String uploadimgUpdate(MultipartHttpServletRequest req, HttpServletRequest request, 
			HttpSession session, UploadDTO dto){
				
		 MultipartFile upload=req.getFile("upload");
		 
		 String filename=upload.getOriginalFilename();
		 if(filename.equals("")||filename==null){
			 
		 }else{
		 copyInto(upload, request);
		 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
		 String id=(String)session.getAttribute("sid");
		 String filetype="0";
	     String filepath=root_path+attach_path+filename;
		 System.out.println(filename);
		 System.out.println(id);
		 
		 String check=uploadDao.filecheck(id);
		 dto.setId(id);
		 dto.setFilename(filename); 	
		 if(check==null||check.equals("")){
			 
			 dto.setFilepath(filepath); dto.setFiletype(filetype);
			 int count=uploadDao.upload(dto);
			 String msg=count>0?"O":"X";
			 System.out.println(msg);
			 
			 }
		 else{		
			 System.out.println("업로드시도");
		 int count=uploadDao.fileUpdate(dto);
		 String msg=count>0?"upload 성공":"upload 실패";
		 System.out.println(msg);
	    }}
		 return "upload/uploadMsg";
	}
	
	@RequestMapping(value="uploadimg.do", method=RequestMethod.POST)
	public String uploadimg(MultipartHttpServletRequest req, HttpServletRequest request, 
			HttpSession session, UploadDTO dto){
		
		
		 MultipartFile upload=req.getFile("upload");
		 copyInto(upload, request);
		 
		 String filename=upload.getOriginalFilename();
		 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
		 String filetype="0";
	     String filepath=root_path+attach_path+filename;
		 String id=(String)session.getAttribute("sid");
		 
		 dto.setId(id); dto.setFilename(filename); 
		 dto.setFilepath(filepath); dto.setFiletype(filetype);
		 
		 
		 int count=uploadDao.upload(dto);
		 String msg=count>0?"upload 성공":"upload 실패";
		 System.out.println(msg);
	     System.out.println("id :"+id);
	     System.out.println("filename:"+filename);
	     System.out.println("filepath:"+filepath);
	    //return "upload/uploadTest";
	     
	     return "mypage/myProfile";
	}
	
	//upload
	

}
