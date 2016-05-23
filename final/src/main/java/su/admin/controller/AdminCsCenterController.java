package su.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.csCenter.model.*;
@Controller
public class AdminCsCenterController {

	@Autowired
	private CsNoticeDAO csnoticeDao;

	public CsNoticeDAO getCsnoticeDao() {
		return csnoticeDao;
	}

	public void setCsnoticeDao(CsNoticeDAO csnoticeDao) {
		this.csnoticeDao = csnoticeDao;
	}
	//공지사항 창띄우기
	@RequestMapping("/adminNoticeList.do")
	public ModelAndView noticeList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=csnoticeDao.noticeTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<CsNoticeDTO> list=csnoticeDao.noticeList(cp,listSize);
		String pageStr=
			su.Page.SuPage.makePage("adminNoticeList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("admin/noticeList");
		return mav;
	}
	//공지사항 수정
	@RequestMapping("/NoticeUpdate.do")
	public ModelAndView noticeContent(int idx){
		int result =csnoticeDao.noticeReadnum(idx);
		List<CsNoticeDTO> list=csnoticeDao.noticeContent(idx);
		
 		ModelAndView mav=new ModelAndView();
 		mav.addObject("result",result);
		mav.addObject("list", list);
		mav.setViewName("admin/adminNoticeContent");
		return mav;
	}
	@RequestMapping("/NoticeUpdate_ok.do")
	public ModelAndView noticeUpdate(CsNoticeDTO dto){
		int result=csnoticeDao.noticeUpdate(dto);
		String msg=result>0?"수정성공!":"수정실패!";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("admin/noticeMsg");
		return mav;
	}
	//공지사항 삭제
	@RequestMapping("/NoticeDelete.do")
	public ModelAndView noticeDelete(int idx){
		 int result=csnoticeDao.noitceDelete(idx);
		 String msg=result>0?"공지사항글삭제성공!":"공지사항글삭제실패!";
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("msg",msg);
		  mav.setViewName("admin/noticeMsg");
		  return mav;
	}
	//공지사항 글쓰기
	@RequestMapping("/noticeWriteForm")
	public String noticeWriteForm(){
		return "admin/noticeWrite";
	}
	
		@RequestMapping("/noticeWrite.do")
		public ModelAndView noticeAdd(CsNoticeDTO dto){
			int result=csnoticeDao.noticeAdd(dto);
			String msg=result>0?"공지사항글쓰기성공":"공지사항글쓰기실패";
			ModelAndView mav=new ModelAndView();
			mav.addObject("msg", msg);
			mav.setViewName("admin/noticeMsg");
			return mav;
		}
	
}


