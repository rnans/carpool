package su.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {

	
	 @RequestMapping("/messageSend.do")
	 public ModelAndView messageSend(HttpServletRequest req){
		 String id = req.getParameter("userid");
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("id",id);
		 mav.setViewName("message/messageSend");
		 return mav;
		
	 }
}
