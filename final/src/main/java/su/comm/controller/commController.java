package su.comm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class commController {
	
	@RequestMapping("comm.do")
	public String comm(){
		
		return "comm/comm";
		
	}
	
	@RequestMapping("sche.do")
	public String sche(){
		
		return "comm/sche";
		
	}
	
	@RequestMapping("calendar.do")
	public String calendar(){
		
		return "comm/calendar";
		
	}
	
	@RequestMapping("calendarView.do")
	public String calendarView(){
		
		return "comm/calendarMonthPrintView";
		
	}

}
