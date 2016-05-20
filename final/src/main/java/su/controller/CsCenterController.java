package su.controller;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

import javax.servlet.http.HttpSession;

import su.csCenter.model.*;

@Controller
public class CsCenterController {
	@Autowired
	private CsNoticeDAO csnoticeDao;
	
	@Autowired
	private CsoneandoneDAO csoneandoneDao;
	
	public CsoneandoneDAO getCsoneandoneDao() {
		return csoneandoneDao;
	}

	public void setCsoneandoneDao(CsoneandoneDAO csoneandoneDao) {
		this.csoneandoneDao = csoneandoneDao;
	}

	public CsNoticeDAO getCsnoticeDao() {
		return csnoticeDao;
	}

	public void setCsnoticeDao(CsNoticeDAO csnoticeDao) {
		this.csnoticeDao = csnoticeDao;
	}

	@RequestMapping("/csCenter.do")
	public String csCenter(){
		return "redirect:notice.do";
	}
	//공지사항 리스트
	@RequestMapping("/notice.do")
		public ModelAndView noticeList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=csnoticeDao.noticeTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<CsNoticeDTO> list=csnoticeDao.noticeList(cp,listSize);
		String pageStr=
			su.Page.SuPage.makePage("csCenter.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("csCenter/notice");
		return mav;
	}
	//공지사항 글보기
	@RequestMapping("/noticeContent.do")
	public ModelAndView noticeContent(int idx){
		int result =csnoticeDao.noticeReadnum(idx);
		List<CsNoticeDTO> list=csnoticeDao.noticeContent(idx);
		
 		ModelAndView mav=new ModelAndView();
 		mav.addObject("result",result);
		mav.addObject("list", list);
		mav.setViewName("csCenter/noticeContent");
		return mav;
	}
		
	
	@RequestMapping("/qnaList.do")
		public String qndList(){
			return "csCenter/qnaList";
		}
	//1:1문의 리스트
	@RequestMapping("/oneAndOne.do")
	public ModelAndView oneandoneList(@RequestParam(value="cp",defaultValue="1")int cp,  HttpSession session){
        String sid=(String)session.getAttribute("sid");
    	ModelAndView mav=new ModelAndView();
    	if(sid==null||sid.equals("")){
	       	String msg="로그인후 이용 바랍니다.";
	       	mav.addObject("msg", msg);
	       	mav.setViewName("csCenter/oneandonefailMsg");
	        return mav;
	 
    	}else{
		int totalCnt=csoneandoneDao.oneandoneTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<CsoneandoneDTO> list=csoneandoneDao.oneandoneList(cp,listSize,sid);
		String pageStr=
			su.Page.SuPage.makePage("oneAndOne.do", totalCnt, listSize, pageSize, cp);
    	
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("csCenter/oneAndOne");
		  return mav;
        }
    
	}
	@RequestMapping("/noticeWriteForm")
	public String noticeWriteForm(){
		return "csCenter/noticeWrite";
	}
	//공지사항 글쓰기
	@RequestMapping("/noticeWrite.do")
	public ModelAndView noticeAdd(CsNoticeDTO dto){
		int result=csnoticeDao.noticeAdd(dto);
		String msg=result>0?"공지사항글쓰기성공":"공지사항글쓰기실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("csCenter/noticeMsg");
		return mav;
	}
	//1:1문의 보기
   @RequestMapping("/oneandoneContent.do")
   public ModelAndView oneandoneContent(int idx){
	   
	   List<CsoneandoneDTO> list=csoneandoneDao.oneandoneContent(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("csCenter/oneandoneContent");
		return mav;
   }
	//1:1글쓰기
   @RequestMapping("/oneandoneAdd.do")
   public ModelAndView oneandonewrite(CsoneandoneDTO dto){
	   int result=csoneandoneDao.oneandoneAdd(dto);
		String msg=result>0?"문의성공":"문의실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("csCenter/oneandoneMsg");
		return mav;
   }
	@RequestMapping("useGuideList.do")
	public String useGuideList(){
		return "csCenter/useGuideList";
	}
	@RequestMapping("oneAndOneWriteForm.do")
	public String oneAndOneWriteForm(){
		return "csCenter/oneAndOneWriteForm";
	}
	@RequestMapping("admintest.do")
	public String admintest(){
		return "admin/noticeList";
	}
}
	

