package su.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarbookController {

	@RequestMapping("carBookInfo.do")
	public String carBookInfo(){
		
	return "carbook/carBookInfo";
	}
	
	@RequestMapping("/costReg.do")
	public String costReg(){
		return "carbook/costReg";
	}
	
	@RequestMapping("/carReg.do")
	public String carReg(){
		return "carbook/carReg";
	}
}
