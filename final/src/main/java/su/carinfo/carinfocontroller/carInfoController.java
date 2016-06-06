package su.carinfo.carinfocontroller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.PoolDAO;
import su.pool.model.PoolDTO;
import su.upload.model.UploadDAO;
import su.upload.model.UploadDTO;
import su.carinfo.model.carInfoDAO;
import su.carinfo.model.carInfoDTO;
import su.member.model.*;
import su.mypage.model.MypageDTO;

@Controller
public class carInfoController {
	@Autowired
	private carInfoDAO carInfoDao;

	public carInfoDAO getCarInfoDao() {
		return carInfoDao;
	}

	public void setCarInfoDao(carInfoDAO carInfoDao) {
		this.carInfoDao = carInfoDao;
	}
	
	@Autowired
	private UploadDAO uploadDao;	
	public UploadDAO getUploadDao() {
		return uploadDao;
	}
	public void setUploadDao(UploadDAO uploadDao) {
		this.uploadDao = uploadDao;
	}


	String root_path=null;
	 String attach_path=null;
	 
	 private void copyInto(MultipartFile upload, MultipartFile upload2, HttpServletRequest request){
	     System.out.println("올린파일명:"+upload.getOriginalFilename());
	   
	     //경로
	    root_path = request.getSession().getServletContext().getRealPath("/");  
	    attach_path = "img/";

	     try {
	    	 String carName=upload.getOriginalFilename();
	    	 String confirmName=upload2.getOriginalFilename();
	    	 if(carName==null){
	    		
	    	 }else{
	    		 byte[] bytes=upload.getBytes();
	    		 File outFile=
	    		            new File(root_path+attach_path+upload.getOriginalFilename());
	    		 new File(root_path+attach_path+upload2.getOriginalFilename());
	   	      FileOutputStream fos= 
	   	                       new FileOutputStream(outFile);
	   	   fos.write(bytes);
		      fos.close();
	    	 }
	    	 if(confirmName==null){
	    		
	    	 }else{
	    		 byte[] bytes=upload2.getBytes();
	    		 File outFile=
	    		            new File(root_path+attach_path+upload2.getOriginalFilename());
	    		 new File(root_path+attach_path+upload2.getOriginalFilename());
	   	      FileOutputStream fos= 
	   	                       new FileOutputStream(outFile);
	   	   fos.write(bytes);
		      fos.close();
	    	 }
	   } catch (IOException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	   }
	  }

	@RequestMapping(value = "/carAdd.do", method = RequestMethod.GET)
	public ModelAndView carAddForm(HttpSession session,carInfoDTO dto) {
		
		String userid = (String) session.getAttribute("sid");
		MemberDTO dto2=carInfoDao.username(userid);
		dto.setDriver(dto2.getName());
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("carManage/carAdd");
		return mav;
	}

	@RequestMapping(value = "/carAdd.do", method = RequestMethod.POST)
	public ModelAndView carAdd(@Param(value="check")String check,MultipartHttpServletRequest req, HttpServletRequest request, 
			HttpSession session, UploadDTO dto,carInfoDTO dto2) {

		
		System.out.println("1");
		ModelAndView mav = new ModelAndView();
		int result2 = carInfoDao.carNumList(dto2);
		mav.addObject("dto", dto2);
		System.out.println("2");
		if(check.equals("false")){
			
			mav.addObject("msg", "형식 확인을 해주세요.");
			mav.setViewName("carManage/carAdd");
		}else if (result2 == 1) {
		
			
			mav.addObject("msg", "이미 등록된 차량 번호입니다.");
			mav.setViewName("carManage/carAdd");
		} else {
			
			MultipartFile upload=req.getFile("upload");
			MultipartFile upload2=req.getFile("upload2");
			 copyInto(upload,upload2, request);
			 
			 String filename=upload.getOriginalFilename();
			 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
			 String filetype="1";
		     String filepath=root_path+attach_path+filename;
			 String id=(String)session.getAttribute("sid");
			 
			 dto.setId(id); 
			 
	
		     if(filename.equals("")||filename==null){
		    	 dto2.setCarphoto("사진없음");
		     }else{
		    	 dto2.setCarphoto(filename);
		    	 dto.setFilename(filename); 
				 dto.setFilepath(filepath); dto.setFiletype(filetype);
				 int count=uploadDao.upload(dto);
				 String msg2=count>0?"upload 성공":"upload 실패";
				 System.out.println(msg2);
			     System.out.println("id :"+id);
			     System.out.println("filename:"+filename);
			     System.out.println("filepath:"+filepath);
		     }
		//인증사진
		     String filename2=upload2.getOriginalFilename();
			 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
			 String filetype2="1";
		     String filepath2=root_path+attach_path+filename2;
		
		     
		     if(filename2.equals("")||filename2==null){
		    	 dto2.setConfirmphoto("사진없음");
		     }else{
		    	 dto2.setConfirmphoto(filename2);
		    	 
		    	 dto.setFilename(filename2); 
				 dto.setFilepath(filepath2); dto.setFiletype(filetype2);
				 int count=uploadDao.upload(dto);
		    	 String msg2=count>0?"upload 성공":"upload 실패";
				 System.out.println(msg2);
			     System.out.println("id :"+id);
			     System.out.println("filename2:"+filename2);
			     System.out.println("filepath2:"+filepath2);
		     }
		 	int result = carInfoDao.carAdd(dto2);
		 	
		 	if(result>0){
		
			mav.addObject("msg", "차량등록 성공");
			mav.addObject("gopage", "carList.do");
			mav.setViewName("carManage/carMsg");
		 	}else{
			mav.addObject("msg", "차 종류를 입력해주세요");
			mav.setViewName("carManage/carAdd");
			mav.addObject("dto", dto2);
		 	}
		 	
			if (result > 0) {
				session.setAttribute("carnum", dto2.getCarnum());
			}
		}
		return mav;

	}

	@RequestMapping("/carList.do")
	public ModelAndView carList(HttpSession session) {

		String userid = (String) session.getAttribute("sid");
		ModelAndView mav = new ModelAndView();
		if (userid == null) {

			mav.addObject("msg", "로그인후 이용가능합니다.");
			mav.addObject("gopage", "index.do");
			mav.setViewName("carManage/carMsg");

		} else {
				
			/*	List<UploadDTO> dto=carInfoDao.carImage(userid);
				mav.addObject("carImage",dto);*/
			
			List<carInfoDTO> lists = carInfoDao.carAllList(userid);
			mav.addObject("list", lists);
			mav.setViewName("carManage/carList");
		}
		return mav;

	}

	@RequestMapping(value = "/carUpdate.do", method = RequestMethod.GET)
	public ModelAndView carUpdateForm(carInfoDTO dto) {

		carInfoDTO idxList = carInfoDao.carList(dto);
		System.out.println(dto.getIdx());
		ModelAndView mav = new ModelAndView();
		mav.addObject("idxList", idxList);
		mav.setViewName("carManage/carUpdate");
		return mav;
	}

	@RequestMapping(value = "/carUpdate.do", method = RequestMethod.POST)
	public ModelAndView carUpdate(@Param(value="check")String check,carInfoDTO dto2,MultipartHttpServletRequest req, HttpServletRequest request, 
			HttpSession session, UploadDTO dto) {

		ModelAndView mav = new ModelAndView();
		int result2 = carInfoDao.carNumList(dto2);
		mav.addObject("dto", dto2);
		if(check.equals("false")){
			
			mav.addObject("msg", "형식 확인을 해주세요.");
			mav.setViewName("carManage/carAdd");
		}else if (result2 == 1) {
			
			mav.addObject("msg", "이미 등록된 차량 번호입니다.");
			mav.setViewName("carManage/carAdd");
		} else {
			
			MultipartFile upload=req.getFile("upload");
			MultipartFile upload2=req.getFile("upload2");
			 copyInto(upload,upload2, request);
			 
			 String filename=upload.getOriginalFilename();
			 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
			 String filetype="1";
		     String filepath=root_path+attach_path+filename;
			 String id=(String)session.getAttribute("sid");
			 
			 dto.setId(id); 
			 
	
		     if(filename.equals("")||filename==null){
		    	 dto2.setCarphoto("사진없음");
		     }else{
		    	 dto2.setCarphoto(filename);
		    	 dto.setFilename(filename); 
				 dto.setFilepath(filepath); dto.setFiletype(filetype);
				 int count=uploadDao.upload(dto);
				 String msg2=count>0?"upload 성공":"upload 실패";
				 System.out.println(msg2);
			     System.out.println("id :"+id);
			     System.out.println("filename:"+filename);
			     System.out.println("filepath:"+filepath);
		     }
		//인증사진
		     String filename2=upload2.getOriginalFilename();
			 //파일 타입 프로필=0//차량=1//기타=각자 추가하셈
			 String filetype2="1";
		     String filepath2=root_path+attach_path+filename2;
		
		     
		     if(filename2.equals("")||filename2==null){
		    	 dto2.setConfirmphoto("사진없음");
		     }else{
		    	 dto2.setConfirmphoto(filename2);
		    	 
		    	 dto.setFilename(filename2); 
				 dto.setFilepath(filepath2); dto.setFiletype(filetype2);
				 int count=uploadDao.upload(dto);
		    	 String msg2=count>0?"upload 성공":"upload 실패";
				 System.out.println(msg2);
			     System.out.println("id :"+id);
			     System.out.println("filename2:"+filename2);
			     System.out.println("filepath2:"+filepath2);
		     }
		 	int result = carInfoDao.carAdd(dto2);
		 	
		 	if(result>0){
		
			mav.addObject("msg", "차량등록 성공");
			mav.addObject("gopage", "carList.do");
			mav.setViewName("carManage/carMsg");
		 	}else{
			mav.addObject("msg", "차 종류를 입력해주세요");
			mav.setViewName("carManage/carAdd");
			mav.addObject("dto", dto2);
		 	}
		 	
			if (result > 0) {
				session.setAttribute("carnum", dto2.getCarnum());
			}
		}
		return mav;
		
	}

	@RequestMapping("/carDel.do")
	public ModelAndView carDel(carInfoDTO dto) {

		int result = carInfoDao.carDel(dto);
		String msg = result > 0 ? "차량삭제 성공" : "차량삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "carList.do");
		mav.setViewName("carManage/carMsg");
		return mav;
	}

	@RequestMapping("/carTest.do")
	public String test() {

		return "carManage/test";
	}
	@RequestMapping("/carMain.do")
	public ModelAndView carMain(carInfoDTO dto,HttpSession session){
		ModelAndView mav=new ModelAndView();
		String userid = (String) session.getAttribute("sid");
		carInfoDTO confirm = carInfoDao.carList(dto);
		
		if(confirm.getConfirm().equals("0")){
			mav.addObject("msg", "인증된 차량이 아닙니다.");
		}else if(confirm.getConfirm().equals("1")){
			int result=carInfoDao.carIdZero(userid);
			if(result>0){
				int result2 = carInfoDao.carIdOne(dto);
				
				String msg=result2>0?"대표차량으로 등록되었습니다.":"대표차량으로 등록 실패되었습니.";
				mav.addObject("msg", msg);
				mav.addObject("dto2", dto);
			}
		}
		mav.addObject("gopage", "carList.do");
		mav.setViewName("carManage/carMsg");
		return mav;
	}
	
	@RequestMapping("carAdd2.do")
	public String caradd2(){
		return "carManage/carAdd2";
	}
}