package su.upload.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {
	
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
			mav.setViewName("upload/uploadTest");
			return mav;
		}
		 
	 
	@RequestMapping(value="uploadimg.do", method=RequestMethod.POST)
	public String uploadimg(MultipartHttpServletRequest req, HttpServletRequest request, HttpSession session){
		
		
		MultipartFile upload=req.getFile("upload");
		 copyInto(upload, request);
		 
		 String filename=upload.getOriginalFilename();
		 int filetype=0;
	     String filepath=root_path+attach_path+filename;
		 String id=(String)session.getAttribute("sid");

	     System.out.println("id :"+id);
	     System.out.println("filename:"+filename);
	     System.out.println("filepath:"+filepath);
		   return "upload/uploadTest";
	}
	
	//upload
	

}
