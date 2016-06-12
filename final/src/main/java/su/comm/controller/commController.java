package su.comm.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import su.carinfo.model.carInfoDTO;
import su.comm.model.CommBBSreDTO;
import su.comm.model.carpoolinfoDTO;
import su.comm.model.commBBSDTO;
import su.comm.model.commDAO;
import su.comm.model.scheDTO;
import su.upload.model.UploadDTO;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class commController {	
	
	@Autowired
	private commDAO commDao;			
	public commDAO getCommDao() {
		return commDao;
	}
	public void setCommDao(commDAO commDao) {
		this.commDao = commDao;
	}
	
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
	 	

	@RequestMapping("comm.do")
	public ModelAndView comm(HttpSession session, String poolname, String color, UploadDTO dto){
		ModelAndView mav=new ModelAndView();		
		String sid=(String)session.getAttribute("sid");
		
		if(sid==null||sid.equals("")){
            String msg="로그인후 이용 바랍니다.";
            mav.addObject("msg", msg);
            mav.setViewName("csCenter/oneandonefailMsg");
          return mav;

		}else{			
	
			String commid=poolname;
			List<commBBSDTO> list=commDao.bbsList(commid);	
			List<CommBBSreDTO> list2=commDao.reList(commid);
			List<UploadDTO> list3=commDao.imgList2();
			int recount=0;
			
			mav.addObject("color", color);			
			mav.addObject("poolname", commid);
			mav.addObject("recount", recount);
			mav.addObject("list", list);
			mav.addObject("list2",list2);
			mav.addObject("imglist", list3);
			mav.setViewName("comm/comm");
			return mav;	
		}	
	}
	
	@RequestMapping("commsearch.do")
	public ModelAndView commsearch(String search, String poolname){
		ModelAndView mav=new ModelAndView();		
			
			if(search==null||search.equals("")){
			List<commBBSDTO> list=commDao.bbsList(poolname);		
			List<CommBBSreDTO> list2=commDao.reList(poolname);
			mav.addObject("list", list);
			mav.addObject("list2",list2);
			}else{
			List<commBBSDTO> list3=commDao.bbsserch(search, poolname);
			List<CommBBSreDTO> list2=commDao.reList(poolname);
			mav.addObject("list", list3);
			mav.addObject("list2",list2);
			}
			mav.addObject("poolname", poolname);
			mav.setViewName("comm/comm");
			return mav;
	}
	
	
	
	@RequestMapping("commmsg.do")
	public String commmsg(){
		return "comm/commmsg";		
	}	
	
	/*
	 * @RequestMapping(value = "/carAdd.do", method = RequestMethod.POST)
	public ModelAndView carAdd(@Param(value="check")String check,MultipartHttpServletRequest req, HttpServletRequest request, 
			HttpSession session, UploadDTO dto,carInfoDTO dto2) {*/
	
	
	@RequestMapping(value="commWrite.do", method = RequestMethod.POST)
	public ModelAndView commWrite(commBBSDTO dto, MultipartHttpServletRequest req, HttpServletRequest request, 
			HttpSession session,UploadDTO dto2){	
		
		ModelAndView mav=new ModelAndView();
		 MultipartFile upload=req.getFile("upload");		 
		 copyInto(upload, request);
		 
		 String filename=upload.getOriginalFilename();
		 
		 if(filename==null||filename.equals("")){

		 }else{
			 String filetype="3";
		     String filepath=root_path+attach_path+filename;
			 String id=(String)session.getAttribute("sid");
			 
			 String poolname=dto.getPoolname(); //수정요망
			 
			 dto2.setId(id); dto2.setFilename(filename); 
			 dto2.setFilepath(filepath); dto2.setFiletype(filetype);
			 dto2.setPoolname(poolname);
			 
			 int count=commDao.upload(dto2);
			 String msg2=count>0?"업로드 성공":"업로드 실패";
			 mav.addObject("msg2",msg2);
		 }
		 
		 String photo=filename;
		 dto.setphoto(photo);
		
		int count2=commDao.commWrite(dto);		
		String msg=count2>0?"글 작성 성공":"글 작성 실패";
		
		
		mav.addObject("poolname", dto.getPoolname());
		mav.addObject("msg", msg);
		mav.setViewName("comm/commBBSmsg");
		return mav;	
		
	}
	
	@RequestMapping("calendar.do")
	public ModelAndView calendar(String poolname, String color){
		ModelAndView mav=new ModelAndView();
		List<scheDTO> list=commDao.scheList(poolname);
		mav.addObject("poolname",poolname);
		mav.addObject("color",color);
		mav.addObject("list", list);
		mav.setViewName("comm/calendar");
		return mav;
		
	}	
	
	@RequestMapping("scheWrite.do")
	public ModelAndView scheWritego(String day, 
			@RequestParam(value = "month",required = false)String month,
			@RequestParam(value = "year",required = false)String year, String poolname){
		
		String day2=year+"-"+month+"-"+day;
		System.out.println(day2);
		ModelAndView mav=new ModelAndView();	
		mav.addObject("poolname", poolname);
		mav.addObject("day", day2);
		mav.setViewName("comm/scheWrite");	
		return mav;
	}
	
	@RequestMapping(value="scheWrite.do", method=RequestMethod.POST)
	public ModelAndView scheWrite(scheDTO dto){
		
		int count=commDao.scheWrite(dto);
		String msg=count>0?"글 작성 성공":"글 작성 실패";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("comm/commmsg");
		return mav;
		
	}
	
	@RequestMapping("commMember.do")
	public ModelAndView commMember(HttpSession session, String poolname, String color){
		
		String id=(String)session.getAttribute("sid");

		List<carpoolinfoDTO> list2=commDao.commMemberList(poolname);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("comm/commMember");
		mav.addObject("poolname", poolname);
		mav.addObject("color",color);
		mav.addObject("memberlist", list2);
		return mav;
		
	}	
	
	@RequestMapping("reWrite.do")
	public ModelAndView reWrite(CommBBSreDTO dto, HttpSession session,String commid){
		String id=(String)session.getAttribute("sid");
		String name=(String)session.getAttribute("sname");
		dto.setId(id); dto.setName(name); dto.setCommid(commid);
		
		int count=commDao.reWrite(dto);
		String msg=count>0?"글 작성 성공":"글 작성 실패";
		ModelAndView mav=new ModelAndView();
		mav.setViewName("comm/commBBSmsg");
		mav.addObject("poolname", commid);
		mav.addObject("msg", msg);
		return mav;
	}
	
	@RequestMapping("bbsdel.do")
	public String bbsdel(String idx){		
		int count=commDao.bbsdel(idx);
		if(count>0){System.out.println("성공");}
		return "comm/comm";
	}
	
	@RequestMapping("reDel_ok.do")
	public String redel(String idx){
		int count=commDao.redel(idx);
		if(count>0){System.out.println("성공");}
		return "comm/comm";
		
	}
	
	@RequestMapping("bbsupdate.do")
	public String commupdate(String idx, String poolname){
		int count=commDao.bbsupdate(idx);
		if(count>0){System.out.println("성공");}
		return "redirect:comm.do?poolname="+poolname;
	}
	
	@RequestMapping("bbsupdate2.do")
	public String commupdate2(String idx, String poolname){
		int count=commDao.bbsupdate2(idx);
		if(count>0){System.out.println("성공");}
		return "redirect:comm.do?poolname="+poolname;
	}
	
	
	@RequestMapping("test123.do")
	public String test123(){
		return "comm/test";
	}


	
	@RequestMapping("gallery.do")
	public ModelAndView gallery(String poolname, String color){
		
		
		ModelAndView mav=new ModelAndView();
		
		List<UploadDTO> list=commDao.imgList(poolname);
		mav.addObject("list", list);
		mav.addObject("color", color);
		mav.addObject("poolname", poolname);
		mav.setViewName("comm/gallery");
		return mav;
	}
	
	@RequestMapping("poolList2.do")
	public ModelAndView poolList(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("poolList");
		return mav;
	}
	
	@RequestMapping("commMain.do")
	public ModelAndView commMain(HttpSession session){
		
		ModelAndView mav=new ModelAndView();
		
		String id=(String)session.getAttribute("sid");
		List<carpoolinfoDTO> poollist=commDao.poollist(id);
		
		mav.addObject("poollist", poollist);
		
		mav.setViewName("comm/commMain");
		return mav;
		
	}
		 	

}
