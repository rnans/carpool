package su.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	@Autowired
	private CsQnaDAO csqnaDao;
	public CsQnaDAO getCsqnaDao() {
		return csqnaDao;
	}
	public void setCsqnaDao(CsQnaDAO csqnaDao) {
		this.csqnaDao = csqnaDao;
	}
	@Autowired
	private CsoneandoneDAO csoneandoneDao;
	public CsoneandoneDAO getCsoneandoneDao() {
		return csoneandoneDao;
	}
	public void setCsoneandoneDao(CsoneandoneDAO csoneandoneDao) {
		this.csoneandoneDao = csoneandoneDao;
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
		mav.setViewName("admin/csMsg");
		return mav;
	}
	//공지사항 삭제
	@RequestMapping("/NoticeDelete.do")
	public ModelAndView noticeDelete(int idx){
		 int result=csnoticeDao.noticeDelete(idx);
		 String msg=result>0?"공지사항글삭제성공!":"공지사항글삭제실패!";
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("msg",msg);
		  mav.setViewName("admin/csMsg");
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
			mav.setViewName("admin/csMsg");
			return mav;
		}
		//관리자페이지에서 qna 리스트 불러오기
		@RequestMapping("/adminQnaList.do")
		public ModelAndView adminqnaList(@RequestParam(value="cp",defaultValue="1")int cp){
			int totalCnt=csqnaDao.qnaTotalCnt();
			int listSize=10;
			int pageSize=5;
			List<CsQnaDTO> list=csqnaDao.qnaList(cp,listSize);
			String pageStr=
				su.Page.SuPage.makePage("adminQnaList.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("admin/adminQnaList");
			return mav;
		}
		//qna글쓰기
		@RequestMapping("/qnaWrite.do")
		public String qnaWrite(){
			return "admin/qnaWrite";
		}
		
		@RequestMapping("/qnaWrite_ok.do")
		public ModelAndView qnaAdd(CsQnaDTO dto){
			int result=csqnaDao.qnaAdd(dto);
			String msg=result>0?"QnA글쓰기성공":"QnA글쓰기실패";
			ModelAndView mav=new ModelAndView();
			mav.addObject("msg", msg);
			mav.setViewName("admin/qnaMsg");
			return mav;
		}
		//qna수정
		@RequestMapping("/qnaUpdate_ok.do")
		public ModelAndView qnaUpdate(CsQnaDTO dto){
			int result=csqnaDao.qnaUpdate(dto);
			String msg=result>0?"수정성공!":"수정실패!";
			ModelAndView mav=new ModelAndView();
			mav.addObject("msg",msg);
			mav.setViewName("admin/qnaMsg");
			return mav;
		}
		//qna본문 불러오기
		@RequestMapping("/qnaUpdate.do")
		public ModelAndView qnacontent(int idx){
			List<CsQnaDTO> list=csqnaDao.qnaContent(idx);
	 		ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.setViewName("admin/qnaContent");
			return mav;
		}
		//qna삭제
		@RequestMapping("/QnaDelete.do")
		public ModelAndView qnaDelete(int idx){
			 int result=csqnaDao.qnaDelete(idx);
			 String msg=result>0?"QnA글삭제성공!":"QnA글삭제실패!";
			  ModelAndView mav=new ModelAndView();
			  mav.addObject("msg",msg);
			  mav.setViewName("admin/qnaMsg");
			  return mav;
		}
		//1:1문의 리스트
		@RequestMapping("/adminOneAndOne.do")
		public ModelAndView oneandoneList(@RequestParam(value="cp",defaultValue="1")int cp,  HttpSession session){
	        String sid=(String)session.getAttribute("sid");
	    	ModelAndView mav=new ModelAndView();
			int totalCnt=csoneandoneDao.oneandoneTotalCnt();
			int listSize=10;
			int pageSize=5;
			List<CsoneandoneDTO> list=csoneandoneDao.adminoneandoneList(cp,listSize);
			String pageStr=
				su.Page.SuPage.makePage("oneAndOne.do", totalCnt, listSize, pageSize, cp);
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("admin/adminOneAndOne");
			  return mav;
	        }
		//1:1문의 본문보기
		  @RequestMapping("/oneandoneAnswer.do")
		   public ModelAndView oneandoneContent(int idx){  
			   List<CsoneandoneDTO> list=csoneandoneDao.oneandoneContent(idx);
				ModelAndView mav=new ModelAndView();
				mav.addObject("list", list);
				mav.setViewName("admin/oneandoneAnswer");
				return mav;
		   }
		  //1:1답변달기
		  @RequestMapping("/oneandoneAnswer_ok.do")
		  public ModelAndView oneandoneAnswer(CsoneandoneDTO dto){
			  int result=csoneandoneDao.oneandoneAnswer(dto);
				String msg=result>0?"답변달기성공!":"답변달기실패!";
				ModelAndView mav=new ModelAndView();
				mav.addObject("msg",msg);
				mav.setViewName("admin/oneandoneMsg");
				return mav;
		  }
		  //1:1문의 삭제
		  @RequestMapping("/oneandoneDelete.do")
		  public ModelAndView oneandoneDelete(int idx){
			  int result=csoneandoneDao.oneandoneDelete(idx);
				 String msg=result>0?"1:1문의글삭제성공!":"1:1문의글삭제실패!";
				  ModelAndView mav=new ModelAndView();
				  mav.addObject("msg",msg);
				  mav.setViewName("admin/oneandoneMsg");
				  return mav;
		  }
	
}


