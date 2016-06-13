package su.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import su.message.model.MessageDAO;
import su.message.model.MessageDTO;


@Controller
public class IndexController 
{
	@Autowired
	
	private MessageDAO mDao;
	
	
	public MessageDAO getmDao() {
		return mDao;
	}

	public void setmDao(MessageDAO mDao) {
		this.mDao = mDao;
	}

	@RequestMapping("/index.do")
	public ModelAndView viewIndex(HttpSession session)
	{
		ModelAndView mav = new ModelAndView();
		String userid = (String)session.getAttribute("sid");
		
		if(userid==null){
			mav.setViewName("index");
		}else{
			int messageNumber = mDao.messageNumber(userid);
			session.setAttribute("mNum", messageNumber);
			System.out.println("messageNumber="+messageNumber);
			mav.setViewName("index");
		}
		return mav;
	}
	
	
}
