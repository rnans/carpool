package su.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



import su.message.model.*;

@Controller
public class MessageController {
	@Autowired
	public MessageDAO messageDao;

	 public MessageDAO getMessageDao(){
		return messageDao;
	}
	public void setMessageDao(MessageDAO messageDao){
		this.messageDao = messageDao;
	}
/*	@RequestMapping("/messageSend.do")
	 public ModelAndView messageSend(HttpServletRequest req){
		 String id = req.getParameter("userid");
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("id",id);
		 mav.setViewName("message/messageSend");
		 return mav;
	 }
	 @RequestMapping("/messageSend_ok.do")
	 public ModelAndView messageSend_ok(MessageDTO dto){
		 int result=messageDao.messageSend(dto);
		 String msg=result>0?"쪽지보내기성공":"쪽지보내기실패";
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("msg", msg);
		 mav.setViewName("message/messageMsg");
		 return mav;
	 }
	 */
	
	/*
	 @RequestMapping("/messageShow.do")
	 public ModelAndView messageShow(@RequestParam(value="cp",defaultValue="1")int cp,HttpSession session){
	
		 	String sid=(String)session.getAttribute("sid");
			int totalCnt=messageDao.messageTotalCnt(sid);
			int listSize=3;
			int pageSize=2;
			int messageNumber=messageDao.messageNumber(sid);
			List<MessageDTO> list=messageDao.messageShow(cp,listSize,sid);
			
			String pageStr=
				su.Page.SuPage.makePage("messageShow.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("messageNumber",messageNumber);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("message/test1");
			return mav;
		}
	 /*
	 @RequestMapping("/messageContent.do")
	 public ModelAndView messageContent(HttpServletRequest req){
		 int idx=Integer.parseInt(req.getParameter("idx"));
		 List<MessageDTO> list=messageDao.messageContent(idx);
		 int result=messageDao.messageReading(idx);
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("list", list);
		 mav.addObject("result", result);
		 mav.setViewName("message/test2");
		 return mav;
	 }
	 @RequestMapping("/messageRewrite.do")
	 public ModelAndView messageRewrite(HttpServletRequest req){
	      	 String sendid=req.getParameter("sendid");
	      	 ModelAndView mav=new ModelAndView();
	      	 mav.addObject("receiveid", sendid);
	         mav.setViewName("message/test3");
	         return mav;
	 }
	 
	 @RequestMapping("/messageRewrite_ok.do")
	 public ModelAndView messageRewrite_ok(MessageDTO dto){
		 int result=messageDao.messageRewrite(dto);
		 String msg=result>0?"답장성공!":"답장실패!";
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("msg", msg);
		 mav.setViewName("message/messageMsg");
		 return mav;
		 
	 }
	@RequestMapping("/messageDel.do")
	public ModelAndView messageDel(HttpServletRequest req){
		int idx=Integer.parseInt(req.getParameter("idx"));
		ModelAndView mav=new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("message/messageDel");
		return mav;
	}
	@RequestMapping("/messageDel_ok.do")
	public ModelAndView messageDel_ok(int idx){
		int result=messageDao.messageDel(idx);
		String msg=result>0?"쪽지삭제성공!":"쪽지삭제실패!";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("message/messageMsg");
		return mav;
	}
	*/
	
	@RequestMapping("/messageWrite.do")
	public ModelAndView mWrite(HttpSession session,
		@RequestParam("uid")String rid){
		
		String userid = (String)session.getAttribute("sid");
		System.out.println("userid="+userid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("userid", userid);
		mav.addObject("rid",rid);
		mav.setViewName("message/mWrite");
		return mav;
	}
	
	
	@RequestMapping("/messageSend.do")
	public ModelAndView mSend(MessageDTO mDto){
		
		int result=messageDao.messageSend(mDto);
		
		String msg = result>0?"메시지전송성공":"메시지전송실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("message/messageMsg");
		return mav;
	}
	
	@RequestMapping("/messageList.do")
	public ModelAndView mList(@RequestParam(value="cp",defaultValue="1")int cp,HttpSession session){
		
		String userid = (String)session.getAttribute("sid");
		
		int totalCnt=messageDao.messageTotalCnt(userid);
		System.out.println(totalCnt);
		int listSize=10;
		int pageSize=2;
		int messageNumber=messageDao.messageNumber(userid);
		List<MessageDTO> list=messageDao.messageShow(cp,listSize,userid);
		
		session.setAttribute("mNum", messageNumber);
		
		String pageStr=
		su.Page.SuPage.makePage("messageList.do", totalCnt, listSize, pageSize, cp);
		//System.out.println("messageNumber="+messageNumber);
		MessageDTO mDTO = new MessageDTO();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",list);
		mav.addObject("messageNumber",messageNumber);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("message/mList");
		return mav;
	}
	
	@RequestMapping("/messageContent.do")
	public ModelAndView mContent(@RequestParam(value="idx",required=false)int midx,
			MessageDTO mDto){
		
		System.out.println("midx="+midx);
		int result = messageDao.messageReading(midx);
		
		mDto = messageDao.mContent(midx);
		String content = mDto.getContent();
		String senddate = mDto.getSenddate();
		String sendid = mDto.getSendid();
		System.out.println("content="+content);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("senddate", senddate);
		mav.addObject("sendid", sendid);
		mav.addObject("contents", content);
		mav.addObject("midx", midx);
		mav.setViewName("message/mContent");
		return mav;
	}
	
	@RequestMapping("/messageReWrite.do")
	public ModelAndView mrWrite(MessageDTO mDto,HttpSession session,
			@RequestParam("idx")int midx){
		
		String sendid = (String)session.getAttribute("sid");
		int result = messageDao.messageReading(midx);
		mDto = messageDao.messageInfo(midx);
		String receiveid = mDto.getSendid();
		System.out.println("receiveid="+receiveid);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("rid", receiveid);
		mav.addObject("userid", sendid);
		mav.setViewName("message/mWrite");
		return mav;
	}
	
	@RequestMapping("/messageDel.do")
	public ModelAndView mDel(HttpSession session){
		
		String userid = (String)session.getAttribute("sid");
		
		int result = messageDao.noReadDel(userid);
		String msg = result>0?"선택 메시지가 삭제되었습니다.":"메시지 삭제 실패하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("message/messageMsg");
		
		return mav;
	}
	
	@RequestMapping("/messageAllDel.do")
	public ModelAndView maDel(HttpSession session){
		
		String userid = (String)session.getAttribute("sid");
		
		int result = messageDao.messageAllDel(userid);
		String msg = result>0?"메시지가 모두 삭제되었습니다.":"메시지 삭제 실패하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("message/messageMsg");
		return mav;
	}
}

