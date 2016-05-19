package su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
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

	//@RequestMapping("/csCenter.do")
	//public String csCenter(){
		//return "csCenter/notice";
	//}
	//공지사항 리스트
	@RequestMapping("/csCenter.do")
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
	public ModelAndView oneandoneList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=csoneandoneDao.oneandoneTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<CsoneandoneDTO> list=csoneandoneDao.oneandoneList(cp,listSize);
		String pageStr=
			su.Page.SuPage.makePage("oneAndOne.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("csCenter/oneAndOne");
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
	
	@RequestMapping("useGuideList.do")
	public String useGuideList(){
		return "csCenter/useGuideList";
	}
	@RequestMapping("oneAndOneWriteForm.do")
	public String oneAndOneWriteForm(){
		return "csCenter/oneAndOneWriteForm";
	}
}
	

