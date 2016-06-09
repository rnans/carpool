package su.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	 @RequestMapping("/messageShow.do")
	 public ModelAndView messageShow(@RequestParam(value="cp",defaultValue="1")int cp,HttpSession session){
	
		 	String sid=(String)session.getAttribute("sid");
			int totalCnt=messageDao.messageTotalCnt();
			int listSize=10;
			int pageSize=5;
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
		//@RequestParam("rid")String rid추가
		
		//String rid = "admin";
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
		
		int totalCnt=messageDao.messageTotalCnt();
		int listSize=10;
		int pageSize=5;
		//int messageNumber=messageDao.messageNumber(userid);
		List<MessageDTO> list=messageDao.messageShow(cp,listSize,userid);
		
		String pageStr=
		su.Page.SuPage.makePage("messageShow.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",list);
		//mav.addObject("messageNumber",messageNumber);
		mav.setViewName("message/mList");
		
		return mav;
	}
}

