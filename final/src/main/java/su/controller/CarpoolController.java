package su.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarpoolController 
{
	
	@RequestMapping("/carpoolMain.do")
	public String viewMainpage()
	{
		return "carpool/carpoolMain";
	}
	
}
